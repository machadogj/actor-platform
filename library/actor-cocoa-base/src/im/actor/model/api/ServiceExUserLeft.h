//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExUserLeft.java
//

#ifndef _ImActorModelApiServiceExUserLeft_H_
#define _ImActorModelApiServiceExUserLeft_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiServiceExUserLeft : ImActorModelApiServiceEx

#pragma mark Public

- (instancetype)init;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiServiceExUserLeft)

FOUNDATION_EXPORT void ImActorModelApiServiceExUserLeft_init(ImActorModelApiServiceExUserLeft *self);

FOUNDATION_EXPORT ImActorModelApiServiceExUserLeft *new_ImActorModelApiServiceExUserLeft_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiServiceExUserLeft)

#endif // _ImActorModelApiServiceExUserLeft_H_
