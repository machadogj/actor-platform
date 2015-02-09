//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestAddContact.java
//

#ifndef _ImActorModelApiRpcRequestAddContact_H_
#define _ImActorModelApiRpcRequestAddContact_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestAddContact_HEADER 114

@interface ImActorModelApiRpcRequestAddContact : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestAddContact *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash;

- (instancetype)init;

- (jint)getUid;

- (jlong)getAccessHash;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestAddContact)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestAddContact *ImActorModelApiRpcRequestAddContact_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestAddContact, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestAddContact)

#endif // _ImActorModelApiRpcRequestAddContact_H_