//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/User.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/User.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Sex.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUser () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *name_;
  NSString *localName_;
  ImActorModelApiSexEnum *sex_;
  id<JavaUtilList> keyHashes_;
  jlong phone_;
  ImActorModelApiAvatar *avatar_;
  id<JavaUtilList> phones_;
  id<JavaUtilList> emails_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiUser, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, localName_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, sex_, ImActorModelApiSexEnum *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, keyHashes_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, avatar_, ImActorModelApiAvatar *)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, phones_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiUser, emails_, id<JavaUtilList>)


#line 19
@implementation ImActorModelApiUser


#line 32
- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
 withImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex
           withJavaUtilList:(id<JavaUtilList>)keyHashes
                   withLong:(jlong)phone
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
           withJavaUtilList:(id<JavaUtilList>)phones
           withJavaUtilList:(id<JavaUtilList>)emails {
  ImActorModelApiUser_initWithInt_withLong_withNSString_withNSString_withImActorModelApiSexEnum_withJavaUtilList_withLong_withImActorModelApiAvatar_withJavaUtilList_withJavaUtilList_(self, id_, accessHash, name, localName, sex, keyHashes, phone, avatar, phones, emails);
  return self;
}


#line 45
- (instancetype)init {
  ImActorModelApiUser_init(self);
  return self;
}


#line 49
- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (NSString *)getName {
  return self->name_;
}

- (NSString *)getLocalName {
  return self->localName_;
}

- (ImActorModelApiSexEnum *)getSex {
  return self->sex_;
}

- (id<JavaUtilList>)getKeyHashes {
  return self->keyHashes_;
}

- (jlong)getPhone {
  return self->phone_;
}

- (ImActorModelApiAvatar *)getAvatar {
  return self->avatar_;
}

- (id<JavaUtilList>)getPhones {
  return self->phones_;
}

- (id<JavaUtilList>)getEmails {
  return self->emails_;
}


#line 90
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->name_ = [values getStringWithInt:3];
  self->localName_ = [values optStringWithInt:4];
  jint val_sex = [values getIntWithInt:5 withInt:0];
  if (val_sex != 0) {
    self->sex_ = ImActorModelApiSexEnum_parseWithInt_(val_sex);
  }
  self->keyHashes_ = [values getRepeatedLongWithInt:6];
  self->phone_ = [values getLongWithInt:7];
  self->avatar_ = [values optObjWithInt:8 withBSBserObject:new_ImActorModelApiAvatar_init()];
  self->phones_ = [values getRepeatedIntWithInt:9];
  self->emails_ = [values getRepeatedIntWithInt:10];
}


#line 107
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->name_];
  if (self->localName_ != nil) {
    [writer writeStringWithInt:4 withNSString:self->localName_];
  }
  if (self->sex_ != nil) {
    [writer writeIntWithInt:5 withInt:[self->sex_ getValue]];
  }
  [writer writeRepeatedLongWithInt:6 withJavaUtilList:self->keyHashes_];
  [writer writeLongWithInt:7 withLong:self->phone_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:8 withBSBserObject:self->avatar_];
  }
  [writer writeRepeatedIntWithInt:9 withJavaUtilList:self->phones_];
  [writer writeRepeatedIntWithInt:10 withJavaUtilList:self->emails_];
}


#line 130
- (NSString *)description {
  NSString *res = @"struct User{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$$", res, JreStrcat("$$", @", name=", self->name_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", localName=", self->localName_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", sex=", self->sex_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", keyHashes=", [((id<JavaUtilList>) nil_chk(self->keyHashes_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$$", @", avatar=", (self->avatar_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$$", res, JreStrcat("$I", @", phones=", [((id<JavaUtilList>) nil_chk(self->phones_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$I", @", emails=", [((id<JavaUtilList>) nil_chk(self->emails_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 32
void ImActorModelApiUser_initWithInt_withLong_withNSString_withNSString_withImActorModelApiSexEnum_withJavaUtilList_withLong_withImActorModelApiAvatar_withJavaUtilList_withJavaUtilList_(ImActorModelApiUser *self, jint id_, jlong accessHash, NSString *name, NSString *localName, ImActorModelApiSexEnum *sex, id<JavaUtilList> keyHashes, jlong phone, ImActorModelApiAvatar *avatar, id<JavaUtilList> phones, id<JavaUtilList> emails) {
  (void) BSBserObject_init(self);
  
#line 33
  self->id__ = id_;
  self->accessHash_ = accessHash;
  self->name_ = name;
  self->localName_ = localName;
  self->sex_ = sex;
  self->keyHashes_ = keyHashes;
  self->phone_ = phone;
  self->avatar_ = avatar;
  self->phones_ = phones;
  self->emails_ = emails;
}


#line 32
ImActorModelApiUser *new_ImActorModelApiUser_initWithInt_withLong_withNSString_withNSString_withImActorModelApiSexEnum_withJavaUtilList_withLong_withImActorModelApiAvatar_withJavaUtilList_withJavaUtilList_(jint id_, jlong accessHash, NSString *name, NSString *localName, ImActorModelApiSexEnum *sex, id<JavaUtilList> keyHashes, jlong phone, ImActorModelApiAvatar *avatar, id<JavaUtilList> phones, id<JavaUtilList> emails) {
  ImActorModelApiUser *self = [ImActorModelApiUser alloc];
  ImActorModelApiUser_initWithInt_withLong_withNSString_withNSString_withImActorModelApiSexEnum_withJavaUtilList_withLong_withImActorModelApiAvatar_withJavaUtilList_withJavaUtilList_(self, id_, accessHash, name, localName, sex, keyHashes, phone, avatar, phones, emails);
  return self;
}


#line 45
void ImActorModelApiUser_init(ImActorModelApiUser *self) {
  (void) BSBserObject_init(self);
}


#line 45
ImActorModelApiUser *new_ImActorModelApiUser_init() {
  ImActorModelApiUser *self = [ImActorModelApiUser alloc];
  ImActorModelApiUser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUser)
