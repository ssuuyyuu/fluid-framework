//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/LengthFillRatio.java
//

#ifndef _FFTLengthFillRatio_H_
#define _FFTLengthFillRatio_H_

#import "JreEmulation.h"
#include "com/sponberg/fluid/layout/Length.h"

@interface FFTLengthFillRatio : FFTLength {
 @public
  double ratio_;
}

- (id)initWithDouble:(double)ratio;

- (BOOL)fillRatio;

- (double)getRatio;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTLengthFillRatio *)other;

@end

__attribute__((always_inline)) inline void FFTLengthFillRatio_init() {}

typedef FFTLengthFillRatio ComSponbergFluidLayoutLengthFillRatio;

#endif // _FFTLengthFillRatio_H_