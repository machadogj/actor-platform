//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/ECPoint.java
//

#ifndef _OrgBouncycastleMathEcECPoint_H_
#define _OrgBouncycastleMathEcECPoint_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class IOSObjectArray;
@class JavaMathBigInteger;
@class JavaUtilHashMap;
@class OrgBouncycastleMathEcECCurve;
@class OrgBouncycastleMathEcECFieldElement;

@interface OrgBouncycastleMathEcECPoint : NSObject {
 @public
  OrgBouncycastleMathEcECCurve *curve_;
  OrgBouncycastleMathEcECFieldElement *x_;
  OrgBouncycastleMathEcECFieldElement *y_;
  IOSObjectArray *zs_;
  jboolean withCompression_;
  JavaUtilHashMap *preCompTable_;
}

#pragma mark Public

- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

- (jboolean)equalsWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)other;

- (jboolean)isEqual:(id)other;

- (OrgBouncycastleMathEcECFieldElement *)getAffineXCoord;

- (OrgBouncycastleMathEcECFieldElement *)getAffineYCoord;

- (OrgBouncycastleMathEcECCurve *)getCurve;

- (OrgBouncycastleMathEcECPoint *)getDetachedPoint;

- (IOSByteArray *)getEncoded;

- (IOSByteArray *)getEncodedWithBoolean:(jboolean)compressed;

- (OrgBouncycastleMathEcECFieldElement *)getX;

- (OrgBouncycastleMathEcECFieldElement *)getXCoord;

- (OrgBouncycastleMathEcECFieldElement *)getY;

- (OrgBouncycastleMathEcECFieldElement *)getYCoord;

- (OrgBouncycastleMathEcECFieldElement *)getZCoordWithInt:(jint)index;

- (IOSObjectArray *)getZCoords;

- (NSUInteger)hash;

- (jboolean)isCompressed;

- (jboolean)isInfinity;

- (jboolean)isNormalized;

- (jboolean)isValid;

- (OrgBouncycastleMathEcECPoint *)multiplyWithJavaMathBigInteger:(JavaMathBigInteger *)k;

- (OrgBouncycastleMathEcECPoint *)negate;

- (OrgBouncycastleMathEcECPoint *)normalize;

- (OrgBouncycastleMathEcECPoint *)scaleXWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)scale_;

- (OrgBouncycastleMathEcECPoint *)scaleYWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)scale_;

- (OrgBouncycastleMathEcECPoint *)subtractWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

- (OrgBouncycastleMathEcECPoint *)threeTimes;

- (OrgBouncycastleMathEcECPoint *)timesPow2WithInt:(jint)e;

- (NSString *)description;

- (OrgBouncycastleMathEcECPoint *)twice;

- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

#pragma mark Protected

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y;

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs;

- (void)checkNormalized;

- (OrgBouncycastleMathEcECPoint *)createScaledPointWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)sx
                                                   withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)sy;

- (OrgBouncycastleMathEcECPoint *)detach;

- (jboolean)getCompressionYTilde;

- (jint)getCurveCoordinateSystem;

+ (IOSObjectArray *)getInitialZCoordsWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve;

- (OrgBouncycastleMathEcECFieldElement *)getRawXCoord;

- (OrgBouncycastleMathEcECFieldElement *)getRawYCoord;

- (IOSObjectArray *)getRawZCoords;

- (jboolean)satisfiesCofactor;

- (jboolean)satisfiesCurveEquation;

#pragma mark Package-Private

- (OrgBouncycastleMathEcECPoint *)normalizeWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)zInv;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleMathEcECPoint)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, curve_, OrgBouncycastleMathEcECCurve *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, x_, OrgBouncycastleMathEcECFieldElement *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, y_, OrgBouncycastleMathEcECFieldElement *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, zs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, preCompTable_, JavaUtilHashMap *)

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastleMathEcECPoint_EMPTY_ZS_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcECPoint, EMPTY_ZS_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(OrgBouncycastleMathEcECPoint, EMPTY_ZS_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastleMathEcECPoint_getInitialZCoordsWithOrgBouncycastleMathEcECCurve_(OrgBouncycastleMathEcECCurve *curve);

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECPoint *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y);

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECPoint *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECPoint)

@interface OrgBouncycastleMathEcECPoint_AbstractFp : OrgBouncycastleMathEcECPoint

#pragma mark Public

- (OrgBouncycastleMathEcECPoint *)subtractWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

#pragma mark Protected

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y;

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs;

- (jboolean)getCompressionYTilde;

- (jboolean)satisfiesCurveEquation;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcECPoint_AbstractFp)

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECPoint_AbstractFp *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y);

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECPoint_AbstractFp *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECPoint_AbstractFp)

@interface OrgBouncycastleMathEcECPoint_Fp : OrgBouncycastleMathEcECPoint_AbstractFp

#pragma mark Public

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y;

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                         withBoolean:(jboolean)withCompression;

- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

- (OrgBouncycastleMathEcECFieldElement *)getZCoordWithInt:(jint)index;

- (OrgBouncycastleMathEcECPoint *)negate;

- (OrgBouncycastleMathEcECPoint *)threeTimes;

- (OrgBouncycastleMathEcECPoint *)timesPow2WithInt:(jint)e;

- (OrgBouncycastleMathEcECPoint *)twice;

- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

#pragma mark Protected

- (OrgBouncycastleMathEcECFieldElement *)calculateJacobianModifiedWWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)Z
                                                                   withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)ZSquared;

- (OrgBouncycastleMathEcECPoint *)detach;

- (OrgBouncycastleMathEcECFieldElement *)doubleProductFromSquaresWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)a
                                                                 withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)b
                                                                 withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)aSquared
                                                                 withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)bSquared;

- (OrgBouncycastleMathEcECFieldElement *)eightWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x;

- (OrgBouncycastleMathEcECFieldElement *)fourWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x;

- (OrgBouncycastleMathEcECFieldElement *)getJacobianModifiedW;

- (OrgBouncycastleMathEcECFieldElement *)threeWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x;

- (OrgBouncycastleMathEcECPoint_Fp *)twiceJacobianModifiedWithBoolean:(jboolean)calculateW;

- (OrgBouncycastleMathEcECFieldElement *)twoWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x;

#pragma mark Package-Private

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs
                                         withBoolean:(jboolean)withCompression;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcECPoint_Fp)

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECPoint_Fp *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_Fp *new_OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withBoolean_(OrgBouncycastleMathEcECPoint_Fp *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, jboolean withCompression);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_Fp *new_OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withBoolean_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, jboolean withCompression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_withBoolean_(OrgBouncycastleMathEcECPoint_Fp *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs, jboolean withCompression);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_Fp *new_OrgBouncycastleMathEcECPoint_Fp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_withBoolean_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs, jboolean withCompression) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECPoint_Fp)

@interface OrgBouncycastleMathEcECPoint_AbstractF2m : OrgBouncycastleMathEcECPoint

#pragma mark Protected

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y;

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs;

- (jboolean)satisfiesCurveEquation;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcECPoint_AbstractF2m)

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_AbstractF2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECPoint_AbstractF2m *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y);

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_AbstractF2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECPoint_AbstractF2m *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECPoint_AbstractF2m)

@interface OrgBouncycastleMathEcECPoint_F2m : OrgBouncycastleMathEcECPoint_AbstractF2m

#pragma mark Public

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y;

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
                                         withBoolean:(jboolean)withCompression;

- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

- (OrgBouncycastleMathEcECPoint_F2m *)addSimpleWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)b;

- (OrgBouncycastleMathEcECFieldElement *)getYCoord;

- (OrgBouncycastleMathEcECPoint *)negate;

- (OrgBouncycastleMathEcECPoint *)scaleXWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)scale_;

- (OrgBouncycastleMathEcECPoint *)scaleYWithOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)scale_;

- (OrgBouncycastleMathEcECPoint *)subtractWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

- (OrgBouncycastleMathEcECPoint_F2m *)subtractSimpleWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)b;

- (OrgBouncycastleMathEcECPoint_F2m *)tau;

- (OrgBouncycastleMathEcECPoint *)twice;

- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b;

#pragma mark Protected

- (OrgBouncycastleMathEcECPoint *)detach;

- (jboolean)getCompressionYTilde;

#pragma mark Package-Private

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs
                                         withBoolean:(jboolean)withCompression;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcECPoint_F2m)

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECPoint_F2m *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_F2m *new_OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withBoolean_(OrgBouncycastleMathEcECPoint_F2m *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, jboolean withCompression);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_F2m *new_OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withBoolean_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, jboolean withCompression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_withBoolean_(OrgBouncycastleMathEcECPoint_F2m *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs, jboolean withCompression);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint_F2m *new_OrgBouncycastleMathEcECPoint_F2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_withBoolean_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs, jboolean withCompression) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcECPoint_F2m)

#endif // _OrgBouncycastleMathEcECPoint_H_
