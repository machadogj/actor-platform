//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/api/ApiBroker.java
//

#ifndef _ImActorModelNetworkApiApiBroker_H_
#define _ImActorModelNetworkApiApiBroker_H_

@class AMAtomicLongCompat;
@class AMEndpoints;
@class DKActorRef;
@class IOSByteArray;
@class ImActorModelNetworkParserRequest;
@class JavaUtilHashMap;
@class MTMTProto;
@class MTRpcRequest;
@protocol AMActorApiCallback;
@protocol AMAuthKeyStorage;
@protocol AMNetworkProvider;
@protocol AMRpcCallback;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/network/mtp/AuthIdRetriever.h"
#include "im/actor/model/network/mtp/MTProtoCallback.h"

@interface ImActorModelNetworkApiApiBroker : DKActor {
}

+ (DKActorRef *)getWithAMEndpoints:(AMEndpoints *)endpoints
              withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
            withAMActorApiCallback:(id<AMActorApiCallback>)callback
             withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider;

- (instancetype)initWithAMEndpoints:(AMEndpoints *)endpoints
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
             withAMActorApiCallback:(id<AMActorApiCallback>)callback
              withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider;

- (void)preStart;

- (void)onReceiveWithId:(id)message;

@end

FOUNDATION_EXPORT BOOL ImActorModelNetworkApiApiBroker_initialized;
J2OBJC_STATIC_INIT(ImActorModelNetworkApiApiBroker)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT DKActorRef *ImActorModelNetworkApiApiBroker_getWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworkProvider_(AMEndpoints *endpoints, id<AMAuthKeyStorage> keyStorage, id<AMActorApiCallback> callback, id<AMNetworkProvider> networkProvider);

FOUNDATION_EXPORT NSString *ImActorModelNetworkApiApiBroker_TAG_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelNetworkApiApiBroker, TAG_, NSString *)

FOUNDATION_EXPORT AMAtomicLongCompat *ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelNetworkApiApiBroker, NEXT_RPC_ID_, AMAtomicLongCompat *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker)

@interface ImActorModelNetworkApiApiBroker_PerformRequest : NSObject {
}

- (instancetype)initWithImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
                                       withAMRpcCallback:(id<AMRpcCallback>)callback;

- (ImActorModelNetworkParserRequest *)getMessage;

- (id<AMRpcCallback>)getCallback;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_PerformRequest)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_PerformRequest)

@interface ImActorModelNetworkApiApiBroker_CancelRequest : NSObject {
}

- (instancetype)initWithLong:(jlong)randomId;

- (jlong)getRandomId;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_CancelRequest)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_CancelRequest)

@interface ImActorModelNetworkApiApiBroker_RequestAuthId : NSObject {
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_RequestAuthId)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_RequestAuthId)

@interface ImActorModelNetworkApiApiBroker_InitMTProto : NSObject {
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)authId;

- (jlong)getAuthId;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_InitMTProto)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_InitMTProto)

@interface ImActorModelNetworkApiApiBroker_ProtoResponse : NSObject {
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)responseId
                                          withByteArray:(IOSByteArray *)data;

- (jlong)getResponseId;

- (IOSByteArray *)getData;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_ProtoResponse)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_ProtoResponse)

@interface ImActorModelNetworkApiApiBroker_ProtoUpdate : NSObject {
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                          withByteArray:(IOSByteArray *)data;

- (IOSByteArray *)getData;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_ProtoUpdate)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_ProtoUpdate)

@interface ImActorModelNetworkApiApiBroker_ForceResend : NSObject {
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)id_;

- (jlong)getId;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_ForceResend)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_ForceResend)

@interface ImActorModelNetworkApiApiBroker_RequestHolder : NSObject {
}

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_RequestHolder)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_RequestHolder)

@interface ImActorModelNetworkApiApiBroker_$1 : NSObject < DKActorCreator > {
}

- (ImActorModelNetworkApiApiBroker *)create;

- (instancetype)initWithAMEndpoints:(AMEndpoints *)capture$0
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)capture$1
             withAMActorApiCallback:(id<AMActorApiCallback>)capture$2
              withAMNetworkProvider:(id<AMNetworkProvider>)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_$1)

@interface ImActorModelNetworkApiApiBroker_$2 : NSObject < MTAuthIdRetriever_AuthIdCallback > {
}

- (void)onSuccessWithLong:(jlong)authId;

- (void)onFailure;

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_$2)

@interface ImActorModelNetworkApiApiBroker_$3 : NSObject < MTMTProtoCallback > {
}

- (void)onRpcResponseWithLong:(jlong)mid
                withByteArray:(IOSByteArray *)content;

- (void)onUpdateWithByteArray:(IOSByteArray *)content;

- (void)onAuthKeyInvalidatedWithLong:(jlong)authKey;

- (void)onSessionCreated;

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelNetworkApiApiBroker_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkApiApiBroker_$3)

#endif // _ImActorModelNetworkApiApiBroker_H_