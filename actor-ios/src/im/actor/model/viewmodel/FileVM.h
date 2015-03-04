//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/viewmodel/FileVM.java
//

#ifndef _AMFileVM_H_
#define _AMFileVM_H_

@class AMFileLocation;
@class AMMessenger;

#include "J2ObjC_header.h"
#include "im/actor/model/viewmodel/AsyncVM.h"
#include "im/actor/model/viewmodel/FileCallback.h"

@interface AMFileVM : AMAsyncVM < AMFileCallback > {
}

- (instancetype)initWithAMFileLocation:(AMFileLocation *)location
                           withBoolean:(jboolean)isAutostart
                       withAMMessenger:(AMMessenger *)messenger;

- (void)detach;

@end

J2OBJC_EMPTY_STATIC_INIT(AMFileVM)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMFileVM ImActorModelViewmodelFileVM;

J2OBJC_TYPE_LITERAL_HEADER(AMFileVM)

#endif // _AMFileVM_H_