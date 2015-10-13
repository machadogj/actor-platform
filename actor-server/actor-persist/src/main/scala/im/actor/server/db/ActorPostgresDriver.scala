package im.actor.server.db

import com.github.tminglei.slickpg._

trait ActorPostgresDriver extends ExPostgresDriver
  with PgDate2Support
  with PgDateSupportJoda
  with PgArraySupport
  with PgLTreeSupport {

  override val api =
    new API with ArrayImplicits with LTreeImplicits //with DateTimeImplicits
    with Date2DateTimeImplicitsPeriod with JodaDateTimeImplicits
}

object ActorPostgresDriver extends ActorPostgresDriver