//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestRegisterApplePush.java
//

#ifndef _ImActorModelApiRpcRequestRegisterApplePush_H_
#define _ImActorModelApiRpcRequestRegisterApplePush_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcRequestRegisterApplePush_HEADER 76

@interface ImActorModelApiRpcRequestRegisterApplePush : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)apnsKey
               withNSString:(NSString *)token;

+ (ImActorModelApiRpcRequestRegisterApplePush *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getApnsKey;

- (jint)getHeaderKey;

- (NSString *)getToken;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestRegisterApplePush)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestRegisterApplePush, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestRegisterApplePush *ImActorModelApiRpcRequestRegisterApplePush_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestRegisterApplePush_initWithInt_withNSString_(ImActorModelApiRpcRequestRegisterApplePush *self, jint apnsKey, NSString *token);

FOUNDATION_EXPORT ImActorModelApiRpcRequestRegisterApplePush *new_ImActorModelApiRpcRequestRegisterApplePush_initWithInt_withNSString_(jint apnsKey, NSString *token) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestRegisterApplePush_init(ImActorModelApiRpcRequestRegisterApplePush *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestRegisterApplePush *new_ImActorModelApiRpcRequestRegisterApplePush_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestRegisterApplePush)

#endif // _ImActorModelApiRpcRequestRegisterApplePush_H_
