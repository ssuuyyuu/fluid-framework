//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ScreenListener.java
//

#ifndef _FFTScreenListener_H_
#define _FFTScreenListener_H_

#import "JreEmulation.h"

@protocol FFTScreenListener < NSObject, JavaObject >

- (void)screenWillAppear;

- (void)screenDidAppear;

- (void)screenDidDisappear;

- (void)screenWasRemoved;

@end

__attribute__((always_inline)) inline void FFTScreenListener_init() {}

#define ComSponbergFluidLayoutScreenListener FFTScreenListener

#endif // _FFTScreenListener_H_