//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/CryptoKeyPair.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/CryptoKeyPair.h"

@interface AMCryptoKeyPair () {
 @public
  IOSByteArray *publicKey_;
  IOSByteArray *privateKey_;
}
@end

J2OBJC_FIELD_SETTER(AMCryptoKeyPair, publicKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(AMCryptoKeyPair, privateKey_, IOSByteArray *)

@implementation AMCryptoKeyPair

- (instancetype)initWithByteArray:(IOSByteArray *)publicKey
                    withByteArray:(IOSByteArray *)privateKey {
  if (self = [super init]) {
    self->publicKey_ = publicKey;
    self->privateKey_ = privateKey;
  }
  return self;
}

- (IOSByteArray *)getPublicKey {
  return publicKey_;
}

- (IOSByteArray *)getPrivateKey {
  return privateKey_;
}

- (void)copyAllFieldsTo:(AMCryptoKeyPair *)other {
  [super copyAllFieldsTo:other];
  other->publicKey_ = publicKey_;
  other->privateKey_ = privateKey_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMCryptoKeyPair)