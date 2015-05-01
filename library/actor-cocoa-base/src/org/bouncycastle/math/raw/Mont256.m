//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/raw/Mont256.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/raw/Mont256.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/raw/Mont256.h"
#include "org/bouncycastle/math/raw/Nat256.h"

#define OrgBouncycastleMathRawMont256_M 4294967295LL

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathRawMont256, M, jlong)


#line 3
@implementation OrgBouncycastleMathRawMont256


#line 7
+ (jint)inverse32WithInt:(jint)x {
  return OrgBouncycastleMathRawMont256_inverse32WithInt_(x);
}


#line 19
+ (void)multAddWithIntArray:(IOSIntArray *)x
               withIntArray:(IOSIntArray *)y
               withIntArray:(IOSIntArray *)z
               withIntArray:(IOSIntArray *)m
                    withInt:(jint)mInv32 {
  OrgBouncycastleMathRawMont256_multAddWithIntArray_withIntArray_withIntArray_withIntArray_withInt_(x, y, z, m, mInv32);
}


#line 60
+ (void)multAddXFWithIntArray:(IOSIntArray *)x
                 withIntArray:(IOSIntArray *)y
                 withIntArray:(IOSIntArray *)z
                 withIntArray:(IOSIntArray *)m {
  OrgBouncycastleMathRawMont256_multAddXFWithIntArray_withIntArray_withIntArray_withIntArray_(x, y, z, m);
}


#line 96
+ (void)reduceWithIntArray:(IOSIntArray *)z
              withIntArray:(IOSIntArray *)m
                   withInt:(jint)mInv32 {
  OrgBouncycastleMathRawMont256_reduceWithIntArray_withIntArray_withInt_(z, m, mInv32);
}


#line 125
+ (void)reduceXFWithIntArray:(IOSIntArray *)z
                withIntArray:(IOSIntArray *)m {
  OrgBouncycastleMathRawMont256_reduceXFWithIntArray_withIntArray_(z, m);
}

- (instancetype)init {
  OrgBouncycastleMathRawMont256_init(self);
  return self;
}

@end


#line 7
jint OrgBouncycastleMathRawMont256_inverse32WithInt_(jint x) {
  OrgBouncycastleMathRawMont256_initialize();
  
#line 10
  jint z = x;
  z *= 2 - x * z;
  z *= 2 - x * z;
  z *= 2 - x * z;
  z *= 2 - x * z;
  
#line 16
  return z;
}


#line 19
void OrgBouncycastleMathRawMont256_multAddWithIntArray_withIntArray_withIntArray_withIntArray_withInt_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z, IOSIntArray *m, jint mInv32) {
  OrgBouncycastleMathRawMont256_initialize();
  jint z_8 = 0;
  jlong y_0 = IOSIntArray_Get(nil_chk(y), 0) & OrgBouncycastleMathRawMont256_M;
  
#line 24
  for (jint i = 0; i < 8; ++i) {
    
#line 26
    jlong z_0 = IOSIntArray_Get(nil_chk(z), 0) & OrgBouncycastleMathRawMont256_M;
    jlong x_i = IOSIntArray_Get(nil_chk(x), i) & OrgBouncycastleMathRawMont256_M;
    
#line 29
    jlong prod1 = x_i * y_0;
    jlong carry = (prod1 & OrgBouncycastleMathRawMont256_M) + z_0;
    
#line 32
    jlong t = ((jint) carry * mInv32) & OrgBouncycastleMathRawMont256_M;
    
#line 34
    jlong prod2 = t * (IOSIntArray_Get(nil_chk(m), 0) & OrgBouncycastleMathRawMont256_M);
    carry += (prod2 & OrgBouncycastleMathRawMont256_M);
    
#line 37
    carry = (URShift64(carry, 32)) + (URShift64(prod1, 32)) + (URShift64(prod2, 32));
    
#line 39
    for (jint j = 1; j < 8; ++j) {
      
#line 41
      prod1 = x_i * (IOSIntArray_Get(y, j) & OrgBouncycastleMathRawMont256_M);
      prod2 = t * (IOSIntArray_Get(m, j) & OrgBouncycastleMathRawMont256_M);
      
#line 44
      carry += (prod1 & OrgBouncycastleMathRawMont256_M) + (prod2 & OrgBouncycastleMathRawMont256_M) + (IOSIntArray_Get(z, j) & OrgBouncycastleMathRawMont256_M);
      *IOSIntArray_GetRef(z, j - 1) = (jint) carry;
      carry = (URShift64(carry, 32)) + (URShift64(prod1, 32)) + (URShift64(prod2, 32));
    }
    
#line 49
    carry += (z_8 & OrgBouncycastleMathRawMont256_M);
    *IOSIntArray_GetRef(z, 7) = (jint) carry;
    z_8 = (jint) (URShift64(carry, 32));
  }
  
#line 54
  if (z_8 != 0 || OrgBouncycastleMathRawNat256_gteWithIntArray_withIntArray_(z, m)) {
    
#line 56
    OrgBouncycastleMathRawNat256_subWithIntArray_withIntArray_withIntArray_(z, m, z);
  }
}


#line 60
void OrgBouncycastleMathRawMont256_multAddXFWithIntArray_withIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z, IOSIntArray *m) {
  OrgBouncycastleMathRawMont256_initialize();
  
#line 64
  jint z_8 = 0;
  jlong y_0 = IOSIntArray_Get(nil_chk(y), 0) & OrgBouncycastleMathRawMont256_M;
  
#line 67
  for (jint i = 0; i < 8; ++i) {
    
#line 69
    jlong x_i = IOSIntArray_Get(nil_chk(x), i) & OrgBouncycastleMathRawMont256_M;
    
#line 71
    jlong carry = x_i * y_0 + (IOSIntArray_Get(nil_chk(z), 0) & OrgBouncycastleMathRawMont256_M);
    jlong t = carry & OrgBouncycastleMathRawMont256_M;
    carry = (URShift64(carry, 32)) + t;
    
#line 75
    for (jint j = 1; j < 8; ++j) {
      
#line 77
      jlong prod1 = x_i * (IOSIntArray_Get(y, j) & OrgBouncycastleMathRawMont256_M);
      jlong prod2 = t * (IOSIntArray_Get(nil_chk(m), j) & OrgBouncycastleMathRawMont256_M);
      
#line 80
      carry += (prod1 & OrgBouncycastleMathRawMont256_M) + (prod2 & OrgBouncycastleMathRawMont256_M) + (IOSIntArray_Get(z, j) & OrgBouncycastleMathRawMont256_M);
      *IOSIntArray_GetRef(z, j - 1) = (jint) carry;
      carry = (URShift64(carry, 32)) + (URShift64(prod1, 32)) + (URShift64(prod2, 32));
    }
    
#line 85
    carry += (z_8 & OrgBouncycastleMathRawMont256_M);
    *IOSIntArray_GetRef(z, 7) = (jint) carry;
    z_8 = (jint) (URShift64(carry, 32));
  }
  
#line 90
  if (z_8 != 0 || OrgBouncycastleMathRawNat256_gteWithIntArray_withIntArray_(z, m)) {
    
#line 92
    OrgBouncycastleMathRawNat256_subWithIntArray_withIntArray_withIntArray_(z, m, z);
  }
}


#line 96
void OrgBouncycastleMathRawMont256_reduceWithIntArray_withIntArray_withInt_(IOSIntArray *z, IOSIntArray *m, jint mInv32) {
  OrgBouncycastleMathRawMont256_initialize();
  for (jint i = 0; i < 8; ++i) {
    
#line 100
    jint z_0 = IOSIntArray_Get(nil_chk(z), 0);
    
#line 102
    jlong t = (z_0 * mInv32) & OrgBouncycastleMathRawMont256_M;
    
#line 104
    jlong carry = t * (IOSIntArray_Get(nil_chk(m), 0) & OrgBouncycastleMathRawMont256_M) + (z_0 & OrgBouncycastleMathRawMont256_M);
    
#line 106
    URShiftAssignLong(&carry, 32);
    
#line 108
    for (jint j = 1; j < 8; ++j) {
      
#line 110
      carry += t * (IOSIntArray_Get(m, j) & OrgBouncycastleMathRawMont256_M) + (IOSIntArray_Get(z, j) & OrgBouncycastleMathRawMont256_M);
      *IOSIntArray_GetRef(z, j - 1) = (jint) carry;
      URShiftAssignLong(&carry, 32);
    }
    
#line 115
    *IOSIntArray_GetRef(z, 7) = (jint) carry;
  }
  
#line 119
  if (OrgBouncycastleMathRawNat256_gteWithIntArray_withIntArray_(z, m)) {
    
#line 121
    OrgBouncycastleMathRawNat256_subWithIntArray_withIntArray_withIntArray_(z, m, z);
  }
}


#line 125
void OrgBouncycastleMathRawMont256_reduceXFWithIntArray_withIntArray_(IOSIntArray *z, IOSIntArray *m) {
  OrgBouncycastleMathRawMont256_initialize();
  
#line 129
  for (jint i = 0; i < 8; ++i) {
    
#line 131
    jint z_0 = IOSIntArray_Get(nil_chk(z), 0);
    
#line 133
    jlong t = z_0 & OrgBouncycastleMathRawMont256_M;
    jlong carry = t;
    
#line 136
    for (jint j = 1; j < 8; ++j) {
      
#line 138
      carry += t * (IOSIntArray_Get(nil_chk(m), j) & OrgBouncycastleMathRawMont256_M) + (IOSIntArray_Get(z, j) & OrgBouncycastleMathRawMont256_M);
      *IOSIntArray_GetRef(z, j - 1) = (jint) carry;
      URShiftAssignLong(&carry, 32);
    }
    
#line 143
    *IOSIntArray_GetRef(z, 7) = (jint) carry;
  }
  
#line 147
  if (OrgBouncycastleMathRawNat256_gteWithIntArray_withIntArray_(z, m)) {
    
#line 149
    OrgBouncycastleMathRawNat256_subWithIntArray_withIntArray_withIntArray_(z, m, z);
  }
}

void OrgBouncycastleMathRawMont256_init(OrgBouncycastleMathRawMont256 *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathRawMont256)
