//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetFileUploadUrl.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetFileUploadUrl.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetFileUploadUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcResponseGetFileUploadUrl () {
 @public
  NSString *url_;
  IOSByteArray *uploadKey_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetFileUploadUrl, url_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetFileUploadUrl, uploadKey_, IOSByteArray *)


#line 20
@implementation ImActorModelApiRpcResponseGetFileUploadUrl


#line 23
+ (ImActorModelApiRpcResponseGetFileUploadUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseGetFileUploadUrl_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithNSString:(NSString *)url
                   withByteArray:(IOSByteArray *)uploadKey {
  ImActorModelApiRpcResponseGetFileUploadUrl_initWithNSString_withByteArray_(self, url, uploadKey);
  return self;
}


#line 35
- (instancetype)init {
  ImActorModelApiRpcResponseGetFileUploadUrl_init(self);
  return self;
}


#line 39
- (NSString *)getUrl {
  return self->url_;
}

- (IOSByteArray *)getUploadKey {
  return self->uploadKey_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->url_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->uploadKey_ = [values getBytesWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->url_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->url_];
  if (self->uploadKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->uploadKey_];
}


#line 66
- (NSString *)description {
  NSString *res = @"tuple GetFileUploadUrl{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 73
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseGetFileUploadUrl_HEADER;
}

@end


#line 23
ImActorModelApiRpcResponseGetFileUploadUrl *ImActorModelApiRpcResponseGetFileUploadUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseGetFileUploadUrl_initialize();
  
#line 24
  return ((ImActorModelApiRpcResponseGetFileUploadUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseGetFileUploadUrl_init(), data));
}

void ImActorModelApiRpcResponseGetFileUploadUrl_initWithNSString_withByteArray_(ImActorModelApiRpcResponseGetFileUploadUrl *self, NSString *url, IOSByteArray *uploadKey) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 31
  self->url_ = url;
  self->uploadKey_ = uploadKey;
}


#line 30
ImActorModelApiRpcResponseGetFileUploadUrl *new_ImActorModelApiRpcResponseGetFileUploadUrl_initWithNSString_withByteArray_(NSString *url, IOSByteArray *uploadKey) {
  ImActorModelApiRpcResponseGetFileUploadUrl *self = [ImActorModelApiRpcResponseGetFileUploadUrl alloc];
  ImActorModelApiRpcResponseGetFileUploadUrl_initWithNSString_withByteArray_(self, url, uploadKey);
  return self;
}


#line 35
void ImActorModelApiRpcResponseGetFileUploadUrl_init(ImActorModelApiRpcResponseGetFileUploadUrl *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 35
ImActorModelApiRpcResponseGetFileUploadUrl *new_ImActorModelApiRpcResponseGetFileUploadUrl_init() {
  ImActorModelApiRpcResponseGetFileUploadUrl *self = [ImActorModelApiRpcResponseGetFileUploadUrl alloc];
  ImActorModelApiRpcResponseGetFileUploadUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseGetFileUploadUrl)
