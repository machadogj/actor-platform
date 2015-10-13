package im.actor.server.persist.presences

import im.actor.server.models.presences.{ UserPresence ⇒ UserPresenceModel }
import im.actor.server.db.ActorPostgresDriver.api._
import org.joda.time.DateTime
import slick.dbio.Effect.{ Read, Write }
import slick.profile.{ SqlAction, FixedSqlAction }

class UserPresenceTable(tag: Tag) extends Table[UserPresenceModel](tag, "user_presences") {
  def userId = column[Int]("user_id", O.PrimaryKey)

  def lastSeenAt = column[Option[DateTime]]("last_seen_at")

  def * = (userId, lastSeenAt) <> (UserPresenceModel.tupled, UserPresenceModel.unapply)
}

object UserPresence {
  val presences = TableQuery[UserPresenceTable]

  def byUserId(userId: Rep[Int]) = presences.filter(_.userId === userId)
  val byUserIdC = Compiled(byUserId _)

  def createOrUpdate(userPresence: UserPresenceModel): FixedSqlAction[Int, NoStream, Write] =
    presences.insertOrUpdate(userPresence)

  def find(userId: Int): SqlAction[Option[UserPresenceModel], NoStream, Read] =
    byUserIdC(userId).result.headOption
}
