//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdatePhoneTitleChanged.java
//

#ifndef _ImActorModelApiUpdatesUpdatePhoneTitleChanged_H_
#define _ImActorModelApiUpdatesUpdatePhoneTitleChanged_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiUpdatesUpdatePhoneTitleChanged_HEADER 89

@interface ImActorModelApiUpdatesUpdatePhoneTitleChanged : ImActorModelNetworkParserUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)phoneId
               withNSString:(NSString *)title;

+ (ImActorModelApiUpdatesUpdatePhoneTitleChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getPhoneId;

- (NSString *)getTitle;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdatePhoneTitleChanged)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdatePhoneTitleChanged, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdatePhoneTitleChanged *ImActorModelApiUpdatesUpdatePhoneTitleChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdatePhoneTitleChanged_initWithInt_withNSString_(ImActorModelApiUpdatesUpdatePhoneTitleChanged *self, jint phoneId, NSString *title);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdatePhoneTitleChanged *new_ImActorModelApiUpdatesUpdatePhoneTitleChanged_initWithInt_withNSString_(jint phoneId, NSString *title) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdatePhoneTitleChanged_init(ImActorModelApiUpdatesUpdatePhoneTitleChanged *self);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdatePhoneTitleChanged *new_ImActorModelApiUpdatesUpdatePhoneTitleChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdatePhoneTitleChanged)

#endif // _ImActorModelApiUpdatesUpdatePhoneTitleChanged_H_
