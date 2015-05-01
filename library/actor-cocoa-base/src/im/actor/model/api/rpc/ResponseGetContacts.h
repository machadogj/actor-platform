//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetContacts.java
//

#ifndef _ImActorModelApiRpcResponseGetContacts_H_
#define _ImActorModelApiRpcResponseGetContacts_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ImActorModelApiRpcResponseGetContacts_HEADER 88

@interface ImActorModelApiRpcResponseGetContacts : ImActorModelNetworkParserResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                         withBoolean:(jboolean)isNotChanged;

+ (ImActorModelApiRpcResponseGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getUsers;

- (jboolean)isNotChanged;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseGetContacts)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseGetContacts, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetContacts *ImActorModelApiRpcResponseGetContacts_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcResponseGetContacts_initWithJavaUtilList_withBoolean_(ImActorModelApiRpcResponseGetContacts *self, id<JavaUtilList> users, jboolean isNotChanged);

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetContacts *new_ImActorModelApiRpcResponseGetContacts_initWithJavaUtilList_withBoolean_(id<JavaUtilList> users, jboolean isNotChanged) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcResponseGetContacts_init(ImActorModelApiRpcResponseGetContacts *self);

FOUNDATION_EXPORT ImActorModelApiRpcResponseGetContacts *new_ImActorModelApiRpcResponseGetContacts_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseGetContacts)

#endif // _ImActorModelApiRpcResponseGetContacts_H_
