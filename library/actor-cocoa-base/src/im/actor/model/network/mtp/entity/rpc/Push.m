//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/rpc/Push.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/rpc/Push.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/rpc/Push.h"
#include "java/io/IOException.h"


#line 13
@implementation MTPush


#line 17
- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTPush_initWithBSDataInput_(self, stream);
  return self;
}


#line 21
- (instancetype)initWithInt:(jint)updateType
              withByteArray:(IOSByteArray *)body {
  MTPush_initWithInt_withByteArray_(self, updateType, body);
  return self;
}

- (jbyte)getHeader {
  return 0;
}


#line 32
- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeIntWithInt:updateType_];
  [bs writeProtoBytesWithByteArray:body_ withInt:0 withInt:((IOSByteArray *) nil_chk(body_))->size_];
}


#line 38
- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  updateType_ = [((BSDataInput *) nil_chk(bs)) readInt];
  body_ = [bs readProtoBytes];
}


#line 44
- (NSString *)description {
  return JreStrcat("$IC", @"Update[", updateType_, ']');
}

@end


#line 17
void MTPush_initWithBSDataInput_(MTPush *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}


#line 17
MTPush *new_MTPush_initWithBSDataInput_(BSDataInput *stream) {
  MTPush *self = [MTPush alloc];
  MTPush_initWithBSDataInput_(self, stream);
  return self;
}


#line 21
void MTPush_initWithInt_withByteArray_(MTPush *self, jint updateType, IOSByteArray *body) {
  (void) MTProtoStruct_init(self);
  
#line 22
  self->updateType_ = updateType;
  self->body_ = body;
}


#line 21
MTPush *new_MTPush_initWithInt_withByteArray_(jint updateType, IOSByteArray *body) {
  MTPush *self = [MTPush alloc];
  MTPush_initWithInt_withByteArray_(self, updateType, body);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTPush)
