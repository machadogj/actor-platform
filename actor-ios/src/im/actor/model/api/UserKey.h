//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/UserKey.java
//

#ifndef _ImActorModelApiUserKey_H_
#define _ImActorModelApiUserKey_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;

#include "J2ObjC_header.h"
#include "com/droidkit/bser/BserObject.h"

@interface ImActorModelApiUserKey : ComDroidkitBserBserObject {
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)keyHash;

- (instancetype)init;

- (jint)getUid;

- (jlong)getKeyHash;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUserKey)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUserKey)

#endif // _ImActorModelApiUserKey_H_