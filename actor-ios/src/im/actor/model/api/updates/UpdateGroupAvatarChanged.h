//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupAvatarChanged.java
//

#ifndef _ImActorModelApiUpdatesUpdateGroupAvatarChanged_H_
#define _ImActorModelApiUpdatesUpdateGroupAvatarChanged_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;
@class IOSByteArray;
@class ImActorModelApiAvatar;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateGroupAvatarChanged_HEADER 39

@interface ImActorModelApiUpdatesUpdateGroupAvatarChanged : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateGroupAvatarChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
                   withLong:(jlong)date;

- (instancetype)init;

- (jint)getGroupId;

- (jlong)getRid;

- (jint)getUid;

- (ImActorModelApiAvatar *)getAvatar;

- (jlong)getDate;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateGroupAvatarChanged)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupAvatarChanged *ImActorModelApiUpdatesUpdateGroupAvatarChanged_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateGroupAvatarChanged, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateGroupAvatarChanged)

#endif // _ImActorModelApiUpdatesUpdateGroupAvatarChanged_H_