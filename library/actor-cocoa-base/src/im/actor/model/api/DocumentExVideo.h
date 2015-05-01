//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DocumentExVideo.java
//

#ifndef _ImActorModelApiDocumentExVideo_H_
#define _ImActorModelApiDocumentExVideo_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/DocumentEx.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiDocumentExVideo : ImActorModelApiDocumentEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h
                    withInt:(jint)duration;

- (jint)getDuration;

- (jint)getH;

- (jint)getHeader;

- (jint)getW;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiDocumentExVideo)

FOUNDATION_EXPORT void ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(ImActorModelApiDocumentExVideo *self, jint w, jint h, jint duration);

FOUNDATION_EXPORT ImActorModelApiDocumentExVideo *new_ImActorModelApiDocumentExVideo_initWithInt_withInt_withInt_(jint w, jint h, jint duration) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiDocumentExVideo_init(ImActorModelApiDocumentExVideo *self);

FOUNDATION_EXPORT ImActorModelApiDocumentExVideo *new_ImActorModelApiDocumentExVideo_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiDocumentExVideo)

#endif // _ImActorModelApiDocumentExVideo_H_
