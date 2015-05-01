//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/ListEngineDisplayListener.java
//

#ifndef _DKListEngineDisplayListener_H_
#define _DKListEngineDisplayListener_H_

#include "J2ObjC_header.h"

@class IOSLongArray;
@protocol JavaUtilList;

@protocol DKListEngineDisplayListener < NSObject, JavaObject >

- (void)onItemRemovedWithLong:(jlong)id_;

- (void)onItemsRemovedWithLongArray:(IOSLongArray *)ids;

- (void)addOrUpdateWithId:(id)item;

- (void)addOrUpdateWithJavaUtilList:(id<JavaUtilList>)items;

- (void)onItemsReplacedWithJavaUtilList:(id<JavaUtilList>)items;

- (void)onListClear;

@end

J2OBJC_EMPTY_STATIC_INIT(DKListEngineDisplayListener)

J2OBJC_TYPE_LITERAL_HEADER(DKListEngineDisplayListener)

#define ImActorModelDroidkitEngineListEngineDisplayListener DKListEngineDisplayListener

#endif // _DKListEngineDisplayListener_H_
