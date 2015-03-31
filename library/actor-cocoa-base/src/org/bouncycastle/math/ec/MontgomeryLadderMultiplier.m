//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/MontgomeryLadderMultiplier.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/MontgomeryLadderMultiplier.h"

@implementation OrgBouncycastleMathEcMontgomeryLadderMultiplier

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k {
  IOSObjectArray *R = [IOSObjectArray newArrayWithObjects:(id[]){ [((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getInfinity], p } count:2 type:OrgBouncycastleMathEcECPoint_class_()];
  jint n = [((JavaMathBigInteger *) nil_chk(k)) bitLength];
  jint i = n;
  while (--i >= 0) {
    jint b = [k testBitWithInt:i] ? 1 : 0;
    jint bp = 1 - b;
    IOSObjectArray_Set(R, bp, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(R, bp))) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(R, b)]);
    IOSObjectArray_Set(R, b, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(R, b))) twice]);
  }
  return IOSObjectArray_Get(R, 0);
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcMontgomeryLadderMultiplier)