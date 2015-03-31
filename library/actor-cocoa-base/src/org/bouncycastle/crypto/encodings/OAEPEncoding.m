//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/encodings/OAEPEncoding.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/AsymmetricBlockCipher.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/crypto/InvalidCipherTextException.h"
#include "org/bouncycastle/crypto/digests/SHA1Digest.h"
#include "org/bouncycastle/crypto/encodings/OAEPEncoding.h"
#include "org/bouncycastle/crypto/params/ParametersWithRandom.h"

__attribute__((unused)) static void OrgBouncycastleCryptoEncodingsOAEPEncoding_ItoOSPWithInt_withByteArray_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, jint i, IOSByteArray *sp);
__attribute__((unused)) static IOSByteArray *OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, IOSByteArray *Z, jint zOff, jint zLen, jint length);

@interface OrgBouncycastleCryptoEncodingsOAEPEncoding () {
 @public
  IOSByteArray *defHash_;
  id<OrgBouncycastleCryptoDigest> mgf1Hash_;
  id<OrgBouncycastleCryptoAsymmetricBlockCipher> engine_;
  id<BCRandomProvider> random_;
  jboolean forEncryption_;
}

- (void)ItoOSPWithInt:(jint)i
        withByteArray:(IOSByteArray *)sp;

- (IOSByteArray *)maskGeneratorFunction1WithByteArray:(IOSByteArray *)Z
                                              withInt:(jint)zOff
                                              withInt:(jint)zLen
                                              withInt:(jint)length;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoEncodingsOAEPEncoding, defHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoEncodingsOAEPEncoding, mgf1Hash_, id<OrgBouncycastleCryptoDigest>)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoEncodingsOAEPEncoding, engine_, id<OrgBouncycastleCryptoAsymmetricBlockCipher>)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoEncodingsOAEPEncoding, random_, id<BCRandomProvider>)

@implementation OrgBouncycastleCryptoEncodingsOAEPEncoding

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher {
  return [self initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:cipher withOrgBouncycastleCryptoDigest:[[OrgBouncycastleCryptoDigestsSHA1Digest alloc] init] withByteArray:nil];
}

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_ {
  return [self initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:cipher withOrgBouncycastleCryptoDigest:hash_ withByteArray:nil];
}

- (instancetype)initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                                                             withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                                                                               withByteArray:(IOSByteArray *)encodingParams {
  return [self initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:cipher withOrgBouncycastleCryptoDigest:hash_ withOrgBouncycastleCryptoDigest:hash_ withByteArray:encodingParams];
}

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                                     withByteArray:(IOSByteArray *)encodingParams {
  return [self initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:cipher withOrgBouncycastleCryptoDigest:hash_ withByteArray:encodingParams];
}

- (instancetype)initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                                                             withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                                                             withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)mgf1Hash
                                                                                               withByteArray:(IOSByteArray *)encodingParams {
  if (self = [super init]) {
    self->engine_ = cipher;
    self->mgf1Hash_ = mgf1Hash;
    self->defHash_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoDigest>) nil_chk(hash_)) getDigestSize]];
    [hash_ reset];
    if (encodingParams != nil) {
      [hash_ updateWithByteArray:encodingParams withInt:0 withInt:encodingParams->size_];
    }
    [hash_ doFinalWithByteArray:defHash_ withInt:0];
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoAsymmetricBlockCipher:(id<OrgBouncycastleCryptoAsymmetricBlockCipher>)cipher
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hash_
                                   withOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)mgf1Hash
                                                     withByteArray:(IOSByteArray *)encodingParams {
  return [self initOrgBouncycastleCryptoEncodingsOAEPEncodingWithOrgBouncycastleCryptoAsymmetricBlockCipher:cipher withOrgBouncycastleCryptoDigest:hash_ withOrgBouncycastleCryptoDigest:mgf1Hash withByteArray:encodingParams];
}

- (id<OrgBouncycastleCryptoAsymmetricBlockCipher>)getUnderlyingCipher {
  return engine_;
}

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoParamsParametersWithRandom:(OrgBouncycastleCryptoParamsParametersWithRandom *)param {
  self->random_ = [((OrgBouncycastleCryptoParamsParametersWithRandom *) nil_chk(param)) getRandom];
  [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(engine_)) init__WithBoolean:forEncryption withOrgBouncycastleCryptoParamsParametersWithRandom:param];
  self->forEncryption_ = forEncryption;
}

- (jint)getInputBlockSize {
  jint baseBlockSize = [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(engine_)) getInputBlockSize];
  if (forEncryption_) {
    return baseBlockSize - 1 - 2 * ((IOSByteArray *) nil_chk(defHash_))->size_;
  }
  else {
    return baseBlockSize;
  }
}

- (jint)getOutputBlockSize {
  jint baseBlockSize = [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(engine_)) getOutputBlockSize];
  if (forEncryption_) {
    return baseBlockSize;
  }
  else {
    return baseBlockSize - 1 - 2 * ((IOSByteArray *) nil_chk(defHash_))->size_;
  }
}

- (IOSByteArray *)processBlockWithByteArray:(IOSByteArray *)inArg
                                    withInt:(jint)inOff
                                    withInt:(jint)inLen {
  if (forEncryption_) {
    return [self encodeBlockWithByteArray:inArg withInt:inOff withInt:inLen];
  }
  else {
    return [self decodeBlockWithByteArray:inArg withInt:inOff withInt:inLen];
  }
}

- (IOSByteArray *)encodeBlockWithByteArray:(IOSByteArray *)inArg
                                   withInt:(jint)inOff
                                   withInt:(jint)inLen {
  IOSByteArray *block = [IOSByteArray newArrayWithLength:[self getInputBlockSize] + 1 + 2 * ((IOSByteArray *) nil_chk(defHash_))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, block, block->size_ - inLen, inLen);
  *IOSByteArray_GetRef(block, block->size_ - inLen - 1) = (jint) 0x01;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(defHash_, 0, block, defHash_->size_, defHash_->size_);
  IOSByteArray *seed = [IOSByteArray newArrayWithLength:defHash_->size_];
  [((id<BCRandomProvider>) nil_chk(random_)) nextBytesWithByteArray:seed];
  IOSByteArray *mask = OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(self, seed, 0, seed->size_, block->size_ - defHash_->size_);
  for (jint i = defHash_->size_; i != block->size_; i++) {
    *IOSByteArray_GetRef(block, i) ^= IOSByteArray_Get(nil_chk(mask), i - defHash_->size_);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(seed, 0, block, 0, defHash_->size_);
  mask = OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(self, block, defHash_->size_, block->size_ - defHash_->size_, defHash_->size_);
  for (jint i = 0; i != defHash_->size_; i++) {
    *IOSByteArray_GetRef(block, i) ^= IOSByteArray_Get(nil_chk(mask), i);
  }
  return [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(engine_)) processBlockWithByteArray:block withInt:0 withInt:block->size_];
}

- (IOSByteArray *)decodeBlockWithByteArray:(IOSByteArray *)inArg
                                   withInt:(jint)inOff
                                   withInt:(jint)inLen {
  IOSByteArray *data = [((id<OrgBouncycastleCryptoAsymmetricBlockCipher>) nil_chk(engine_)) processBlockWithByteArray:inArg withInt:inOff withInt:inLen];
  IOSByteArray *block;
  if (((IOSByteArray *) nil_chk(data))->size_ < [engine_ getOutputBlockSize]) {
    block = [IOSByteArray newArrayWithLength:[engine_ getOutputBlockSize]];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, 0, block, block->size_ - data->size_, data->size_);
  }
  else {
    block = data;
  }
  if (((IOSByteArray *) nil_chk(block))->size_ < (2 * ((IOSByteArray *) nil_chk(defHash_))->size_) + 1) {
    @throw [[OrgBouncycastleCryptoInvalidCipherTextException alloc] initWithNSString:@"data too short"];
  }
  IOSByteArray *mask = OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(self, block, defHash_->size_, block->size_ - defHash_->size_, defHash_->size_);
  for (jint i = 0; i != defHash_->size_; i++) {
    *IOSByteArray_GetRef(block, i) ^= IOSByteArray_Get(nil_chk(mask), i);
  }
  mask = OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(self, block, 0, defHash_->size_, block->size_ - defHash_->size_);
  for (jint i = defHash_->size_; i != block->size_; i++) {
    *IOSByteArray_GetRef(block, i) ^= IOSByteArray_Get(nil_chk(mask), i - defHash_->size_);
  }
  jboolean defHashWrong = NO;
  for (jint i = 0; i != defHash_->size_; i++) {
    if (IOSByteArray_Get(defHash_, i) != IOSByteArray_Get(block, defHash_->size_ + i)) {
      defHashWrong = YES;
    }
  }
  if (defHashWrong) {
    @throw [[OrgBouncycastleCryptoInvalidCipherTextException alloc] initWithNSString:@"data hash wrong"];
  }
  jint start;
  for (start = 2 * defHash_->size_; start != block->size_; start++) {
    if (IOSByteArray_Get(block, start) != 0) {
      break;
    }
  }
  if (start >= (block->size_ - 1) || IOSByteArray_Get(block, start) != 1) {
    @throw [[OrgBouncycastleCryptoInvalidCipherTextException alloc] initWithNSString:JreStrcat("$I", @"data start wrong ", start)];
  }
  start++;
  IOSByteArray *output = [IOSByteArray newArrayWithLength:block->size_ - start];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(block, start, output, 0, output->size_);
  return output;
}

- (void)ItoOSPWithInt:(jint)i
        withByteArray:(IOSByteArray *)sp {
  OrgBouncycastleCryptoEncodingsOAEPEncoding_ItoOSPWithInt_withByteArray_(self, i, sp);
}

- (IOSByteArray *)maskGeneratorFunction1WithByteArray:(IOSByteArray *)Z
                                              withInt:(jint)zOff
                                              withInt:(jint)zLen
                                              withInt:(jint)length {
  return OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(self, Z, zOff, zLen, length);
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoEncodingsOAEPEncoding *)other {
  [super copyAllFieldsTo:other];
  other->defHash_ = defHash_;
  other->mgf1Hash_ = mgf1Hash_;
  other->engine_ = engine_;
  other->random_ = random_;
  other->forEncryption_ = forEncryption_;
}

@end

void OrgBouncycastleCryptoEncodingsOAEPEncoding_ItoOSPWithInt_withByteArray_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, jint i, IOSByteArray *sp) {
  *IOSByteArray_GetRef(nil_chk(sp), 0) = (jbyte) (URShift32(i, 24));
  *IOSByteArray_GetRef(sp, 1) = (jbyte) (URShift32(i, 16));
  *IOSByteArray_GetRef(sp, 2) = (jbyte) (URShift32(i, 8));
  *IOSByteArray_GetRef(sp, 3) = (jbyte) (URShift32(i, 0));
}

IOSByteArray *OrgBouncycastleCryptoEncodingsOAEPEncoding_maskGeneratorFunction1WithByteArray_withInt_withInt_withInt_(OrgBouncycastleCryptoEncodingsOAEPEncoding *self, IOSByteArray *Z, jint zOff, jint zLen, jint length) {
  IOSByteArray *mask = [IOSByteArray newArrayWithLength:length];
  IOSByteArray *hashBuf = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoDigest>) nil_chk(self->mgf1Hash_)) getDigestSize]];
  IOSByteArray *C = [IOSByteArray newArrayWithLength:4];
  jint counter = 0;
  [self->mgf1Hash_ reset];
  while (counter < (length / hashBuf->size_)) {
    OrgBouncycastleCryptoEncodingsOAEPEncoding_ItoOSPWithInt_withByteArray_(self, counter, C);
    [self->mgf1Hash_ updateWithByteArray:Z withInt:zOff withInt:zLen];
    [self->mgf1Hash_ updateWithByteArray:C withInt:0 withInt:C->size_];
    [self->mgf1Hash_ doFinalWithByteArray:hashBuf withInt:0];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(hashBuf, 0, mask, counter * hashBuf->size_, hashBuf->size_);
    counter++;
  }
  if ((counter * hashBuf->size_) < length) {
    OrgBouncycastleCryptoEncodingsOAEPEncoding_ItoOSPWithInt_withByteArray_(self, counter, C);
    [self->mgf1Hash_ updateWithByteArray:Z withInt:zOff withInt:zLen];
    [self->mgf1Hash_ updateWithByteArray:C withInt:0 withInt:C->size_];
    [self->mgf1Hash_ doFinalWithByteArray:hashBuf withInt:0];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(hashBuf, 0, mask, counter * hashBuf->size_, mask->size_ - (counter * hashBuf->size_));
  }
  return mask;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoEncodingsOAEPEncoding)