//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/MessageContent.java
//

#ifndef _ImActorModelApiMessageContent_H_
#define _ImActorModelApiMessageContent_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "com/droidkit/bser/BserObject.h"

@interface ImActorModelApiMessageContent : ComDroidkitBserBserObject {
}

- (instancetype)initWithInt:(jint)type
              withByteArray:(IOSByteArray *)content;

- (instancetype)init;

- (jint)getType;

- (IOSByteArray *)getContent;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiMessageContent)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiMessageContent)

#endif // _ImActorModelApiMessageContent_H_