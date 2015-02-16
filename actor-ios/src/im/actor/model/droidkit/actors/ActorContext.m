//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/ActorContext.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorContext.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "java/lang/Exception.h"

@interface DKActorContext () {
 @public
  DKActorScope *actorScope_;
}
@end

J2OBJC_FIELD_SETTER(DKActorContext, actorScope_, DKActorScope *)

@implementation DKActorContext

- (instancetype)initWithDKActorScope:(DKActorScope *)scope {
  if (self = [super init]) {
    self->actorScope_ = scope;
  }
  return self;
}

- (DKActorRef *)getSelf {
  return [((DKActorScope *) nil_chk(actorScope_)) getActorRef];
}

- (DKActorSystem *)getSystem {
  return [((DKActorScope *) nil_chk(actorScope_)) getActorSystem];
}

- (DKActorRef *)sender {
  return [((DKActorScope *) nil_chk(actorScope_)) getSender];
}

- (void)stopSelf {
  @try {
    [((DKActorDispatcher *) nil_chk([((DKActorScope *) nil_chk(actorScope_)) getDispatcher])) killGracefullyWithDKActorScope:actorScope_];
  }
  @catch (JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

- (void)copyAllFieldsTo:(DKActorContext *)other {
  [super copyAllFieldsTo:other];
  other->actorScope_ = actorScope_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDKActorScope:", "ActorContext", NULL, 0x1, NULL },
    { "getSelf", NULL, "Lim.actor.model.droidkit.actors.ActorRef;", 0x1, NULL },
    { "getSystem", NULL, "Lim.actor.model.droidkit.actors.ActorSystem;", 0x1, NULL },
    { "sender", NULL, "Lim.actor.model.droidkit.actors.ActorRef;", 0x1, NULL },
    { "stopSelf", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actorScope_", NULL, 0x12, "Lim.actor.model.droidkit.actors.ActorScope;", NULL,  },
  };
  static const J2ObjcClassInfo _DKActorContext = { 1, "ActorContext", "im.actor.model.droidkit.actors", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_DKActorContext;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKActorContext)