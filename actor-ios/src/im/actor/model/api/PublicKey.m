//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/PublicKey.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/PublicKey.h"
#include "java/io/IOException.h"

@interface ImActorModelApiPublicKey () {
 @public
  jint uid_;
  jlong keyHash_;
  IOSByteArray *key_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiPublicKey, key_, IOSByteArray *)

@implementation ImActorModelApiPublicKey

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)keyHash
              withByteArray:(IOSByteArray *)key {
  if (self = [super init]) {
    self->uid_ = uid;
    self->keyHash_ = keyHash;
    ImActorModelApiPublicKey_set_key_(self, key);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getKeyHash {
  return self->keyHash_;
}

- (IOSByteArray *)getKey {
  return self->key_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  self->uid_ = [((ComDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->keyHash_ = [values getLongWithInt:2];
  ImActorModelApiPublicKey_set_key_(self, [values getBytesWithInt:3]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->keyHash_];
  if (self->key_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeBytesWithInt:3 withByteArray:self->key_];
}

- (void)dealloc {
  RELEASE_(key_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiPublicKey *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->keyHash_ = keyHash_;
  ImActorModelApiPublicKey_set_key_(other, key_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withByteArray:", "PublicKey", NULL, 0x1, NULL },
    { "init", "PublicKey", NULL, 0x1, NULL },
    { "getUid", NULL, "I", 0x1, NULL },
    { "getKeyHash", NULL, "J", 0x1, NULL },
    { "getKey", NULL, "[B", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "uid_", NULL, 0x2, "I", NULL,  },
    { "keyHash_", NULL, 0x2, "J", NULL,  },
    { "key_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiPublicKey = { 1, "PublicKey", "im.actor.model.api", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiPublicKey;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiPublicKey)