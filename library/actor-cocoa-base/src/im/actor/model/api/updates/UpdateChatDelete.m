//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateChatDelete.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateChatDelete.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateChatDelete.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateChatDelete () {
 @public
  ImActorModelApiPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateChatDelete, peer_, ImActorModelApiPeer *)


#line 20
@implementation ImActorModelApiUpdatesUpdateChatDelete


#line 23
+ (ImActorModelApiUpdatesUpdateChatDelete *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateChatDelete_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer {
  ImActorModelApiUpdatesUpdateChatDelete_initWithImActorModelApiPeer_(self, peer);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiUpdatesUpdateChatDelete_init(self);
  return self;
}


#line 37
- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiPeer_init()];
}


#line 47
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
}


#line 55
- (NSString *)description {
  NSString *res = @"update ChatDelete{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 63
- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateChatDelete_HEADER;
}

@end


#line 23
ImActorModelApiUpdatesUpdateChatDelete *ImActorModelApiUpdatesUpdateChatDelete_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateChatDelete_initialize();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateChatDelete *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateChatDelete_init(), data));
}


#line 29
void ImActorModelApiUpdatesUpdateChatDelete_initWithImActorModelApiPeer_(ImActorModelApiUpdatesUpdateChatDelete *self, ImActorModelApiPeer *peer) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  
#line 30
  self->peer_ = peer;
}


#line 29
ImActorModelApiUpdatesUpdateChatDelete *new_ImActorModelApiUpdatesUpdateChatDelete_initWithImActorModelApiPeer_(ImActorModelApiPeer *peer) {
  ImActorModelApiUpdatesUpdateChatDelete *self = [ImActorModelApiUpdatesUpdateChatDelete alloc];
  ImActorModelApiUpdatesUpdateChatDelete_initWithImActorModelApiPeer_(self, peer);
  return self;
}


#line 33
void ImActorModelApiUpdatesUpdateChatDelete_init(ImActorModelApiUpdatesUpdateChatDelete *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}


#line 33
ImActorModelApiUpdatesUpdateChatDelete *new_ImActorModelApiUpdatesUpdateChatDelete_init() {
  ImActorModelApiUpdatesUpdateChatDelete *self = [ImActorModelApiUpdatesUpdateChatDelete alloc];
  ImActorModelApiUpdatesUpdateChatDelete_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateChatDelete)
