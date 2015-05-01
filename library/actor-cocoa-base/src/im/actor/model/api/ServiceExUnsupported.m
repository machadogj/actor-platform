//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExUnsupported.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExUnsupported.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExUnsupported.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExUnsupported () {
 @public
  jint key_;
  IOSByteArray *content_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiServiceExUnsupported, content_, IOSByteArray *)


#line 19
@implementation ImActorModelApiServiceExUnsupported


#line 24
- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content {
  ImActorModelApiServiceExUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

- (jint)getHeader {
  return self->key_;
}


#line 35
- (void)parseWithBSBserValues:(BSBserValues *)values {
  @throw new_JavaIoIOException_initWithNSString_(@"Parsing is unsupported");
}


#line 40
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:key_];
  [writer writeBytesWithInt:2 withByteArray:content_];
}

@end


#line 24
void ImActorModelApiServiceExUnsupported_initWithInt_withByteArray_(ImActorModelApiServiceExUnsupported *self, jint key, IOSByteArray *content) {
  (void) ImActorModelApiServiceEx_init(self);
  
#line 25
  self->key_ = key;
  self->content_ = content;
}


#line 24
ImActorModelApiServiceExUnsupported *new_ImActorModelApiServiceExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) {
  ImActorModelApiServiceExUnsupported *self = [ImActorModelApiServiceExUnsupported alloc];
  ImActorModelApiServiceExUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExUnsupported)
