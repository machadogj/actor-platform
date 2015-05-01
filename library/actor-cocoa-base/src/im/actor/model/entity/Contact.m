//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Contact.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Contact.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserCreator.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Contact.h"
#include "java/io/IOException.h"

@interface AMContact () {
 @public
  jint uid_;
  jlong sortKey_;
  AMAvatar *avatar_;
  NSString *name_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(AMContact, avatar_, AMAvatar *)
J2OBJC_FIELD_SETTER(AMContact, name_, NSString *)

__attribute__((unused)) static void AMContact_init(AMContact *self);

__attribute__((unused)) static AMContact *new_AMContact_init() NS_RETURNS_RETAINED;

@interface AMContact_$1 : NSObject < BSBserCreator >

- (AMContact *)createInstance;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMContact_$1)

__attribute__((unused)) static void AMContact_$1_init(AMContact_$1 *self);

__attribute__((unused)) static AMContact_$1 *new_AMContact_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMContact_$1)

J2OBJC_INITIALIZED_DEFN(AMContact)

id<BSBserCreator> AMContact_CREATOR_;


#line 15
@implementation AMContact

+ (AMContact *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMContact_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)sortKey
               withAMAvatar:(AMAvatar *)avatar
               withNSString:(NSString *)name {
  AMContact_initWithInt_withLong_withAMAvatar_withNSString_(self, uid, sortKey, avatar, name);
  return self;
}


#line 40
- (instancetype)init {
  AMContact_init(self);
  return self;
}


#line 44
- (jint)getUid {
  return uid_;
}

- (AMAvatar *)getAvatar {
  return avatar_;
}

- (NSString *)getName {
  return name_;
}


#line 57
- (void)parseWithBSBserValues:(BSBserValues *)values {
  uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  sortKey_ = [values getLongWithInt:2];
  name_ = [values getStringWithInt:3];
  if ([values optBytesWithInt:4] != nil) {
    avatar_ = AMAvatar_fromBytesWithByteArray_([values getBytesWithInt:4]);
  }
}


#line 67
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:uid_];
  [writer writeLongWithInt:2 withLong:sortKey_];
  [writer writeStringWithInt:3 withNSString:name_];
  if (avatar_ != nil) {
    [writer writeObjectWithInt:4 withBSBserObject:avatar_];
  }
}


#line 77
- (jlong)getEngineId {
  return uid_;
}


#line 82
- (jlong)getEngineSort {
  return sortKey_;
}


#line 87
- (NSString *)getEngineSearch {
  return name_;
}

+ (void)initialize {
  if (self == [AMContact class]) {
    AMContact_CREATOR_ = new_AMContact_$1_init();
    J2OBJC_SET_INITIALIZED(AMContact)
  }
}

@end


#line 17
AMContact *AMContact_fromBytesWithByteArray_(IOSByteArray *data) {
  AMContact_initialize();
  
#line 18
  return ((AMContact *) BSBser_parseWithBSBserObject_withByteArray_(new_AMContact_init(), data));
}


#line 33
void AMContact_initWithInt_withLong_withAMAvatar_withNSString_(AMContact *self, jint uid, jlong sortKey, AMAvatar *avatar, NSString *name) {
  (void) BSBserObject_init(self);
  
#line 34
  self->uid_ = uid;
  self->sortKey_ = sortKey;
  self->avatar_ = avatar;
  self->name_ = name;
}


#line 33
AMContact *new_AMContact_initWithInt_withLong_withAMAvatar_withNSString_(jint uid, jlong sortKey, AMAvatar *avatar, NSString *name) {
  AMContact *self = [AMContact alloc];
  AMContact_initWithInt_withLong_withAMAvatar_withNSString_(self, uid, sortKey, avatar, name);
  return self;
}


#line 40
void AMContact_init(AMContact *self) {
  (void) BSBserObject_init(self);
}


#line 40
AMContact *new_AMContact_init() {
  AMContact *self = [AMContact alloc];
  AMContact_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContact)

@implementation AMContact_$1


#line 23
- (AMContact *)createInstance {
  return new_AMContact_init();
}

- (instancetype)init {
  AMContact_$1_init(self);
  return self;
}

@end

void AMContact_$1_init(AMContact_$1 *self) {
  (void) NSObject_init(self);
}

AMContact_$1 *new_AMContact_$1_init() {
  AMContact_$1 *self = [AMContact_$1 alloc];
  AMContact_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContact_$1)
