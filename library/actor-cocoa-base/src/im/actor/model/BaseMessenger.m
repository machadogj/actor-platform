//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseMessenger.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseMessenger.java"

#include "J2ObjC_source.h"
#include "im/actor/model/BaseMessenger.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/DisplayLists.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/mvvm/BindedDisplayList.h"
#include "im/actor/model/viewmodel/ConversationVM.h"
#include "im/actor/model/viewmodel/ConversationVMCallback.h"

@interface AMBaseMessenger () {
 @public
  ImActorModelModulesDisplayLists *displayLists_;
}

@end

J2OBJC_FIELD_SETTER(AMBaseMessenger, displayLists_, ImActorModelModulesDisplayLists *)


#line 16
@implementation AMBaseMessenger


#line 20
- (instancetype)initWithAMConfiguration:(AMConfiguration *)configuration {
  AMBaseMessenger_initWithAMConfiguration_(self, configuration);
  return self;
}

- (AMConversationVM *)buildConversationVMWithAMPeer:(AMPeer *)peer
                            withAMBindedDisplayList:(AMBindedDisplayList *)displayList
                       withAMConversationVMCallback:(id<AMConversationVMCallback>)callback {
  
#line 27
  return new_AMConversationVM_initWithAMPeer_withAMConversationVMCallback_withImActorModelModulesModules_withAMBindedDisplayList_(peer, callback, modules_, displayList);
}


#line 32
- (AMBindedDisplayList *)getDialogsGlobalList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getDialogsGlobalList];
}

- (AMBindedDisplayList *)getMessagesGlobalListWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getMessagesGlobalListWithAMPeer:peer];
}

- (AMBindedDisplayList *)buildMessagesListWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewChatListWithAMPeer:peer withBoolean:NO];
}

- (AMBindedDisplayList *)buildMediaListWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildMediaListWithAMPeer:peer];
}

- (AMBindedDisplayList *)getContactsGlobalList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) getContactsGlobalList];
}

- (AMBindedDisplayList *)buildContactDisplayList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewContactListWithBoolean:NO];
}

- (AMBindedDisplayList *)buildSearchList {
  return [((ImActorModelModulesDisplayLists *) nil_chk(displayLists_)) buildNewSearchListWithBoolean:NO];
}

@end


#line 20
void AMBaseMessenger_initWithAMConfiguration_(AMBaseMessenger *self, AMConfiguration *configuration) {
  (void) AMMessenger_initWithAMConfiguration_(self, configuration);
  self->displayLists_ = new_ImActorModelModulesDisplayLists_initWithImActorModelModulesModules_(self->modules_);
}


#line 20
AMBaseMessenger *new_AMBaseMessenger_initWithAMConfiguration_(AMConfiguration *configuration) {
  AMBaseMessenger *self = [AMBaseMessenger alloc];
  AMBaseMessenger_initWithAMConfiguration_(self, configuration);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMBaseMessenger)
