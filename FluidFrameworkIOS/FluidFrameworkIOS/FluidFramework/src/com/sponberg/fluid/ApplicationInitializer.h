//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/ApplicationInitializer.java
//

#ifndef _FFTApplicationInitializer_H_
#define _FFTApplicationInitializer_H_

@class FFTFluidApp;

#import "JreEmulation.h"
#include "com/sponberg/fluid/PlatformSpecifier.h"

@protocol FFTApplicationInitializer < FFTPlatformSpecifier, NSObject, JavaObject >
- (void)initialize__WithFFTFluidApp:(FFTFluidApp *)app OBJC_METHOD_FAMILY_NONE;

@end

__attribute__((always_inline)) inline void FFTApplicationInitializer_init() {}

#define ComSponbergFluidApplicationInitializer FFTApplicationInitializer

#endif // _FFTApplicationInitializer_H_