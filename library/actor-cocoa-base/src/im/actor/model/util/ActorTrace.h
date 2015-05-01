//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/ActorTrace.java
//

#ifndef _AMActorTrace_H_
#define _AMActorTrace_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/TraceInterface.h"

@class DKActor;
@class DKActorRef;
@class DKEnvelope;
@class JavaLangException;

@interface AMActorTrace : NSObject < DKTraceInterface >

#pragma mark Public

- (instancetype)init;

- (void)onActorDieWithDKActorRef:(DKActorRef *)ref
           withJavaLangException:(JavaLangException *)e;

- (void)onDeadLetterWithDKActorRef:(DKActorRef *)receiver
                            withId:(id)message;

- (void)onDropWithDKActorRef:(DKActorRef *)sender
                      withId:(id)message
                 withDKActor:(DKActor *)actor;

- (void)onEnvelopeDeliveredWithDKEnvelope:(DKEnvelope *)envelope;

- (void)onEnvelopeProcessedWithDKEnvelope:(DKEnvelope *)envelope
                                 withLong:(jlong)duration;

@end

J2OBJC_EMPTY_STATIC_INIT(AMActorTrace)

FOUNDATION_EXPORT void AMActorTrace_init(AMActorTrace *self);

FOUNDATION_EXPORT AMActorTrace *new_AMActorTrace_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMActorTrace)

typedef AMActorTrace ImActorModelUtilActorTrace;

#endif // _AMActorTrace_H_
