//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/KeyValueListModifyable.java
//

#ifndef _FFTKeyValueListModifyable_H_
#define _FFTKeyValueListModifyable_H_

#import "JreEmulation.h"
#include "com/sponberg/fluid/util/KeyValueList.h"

@protocol FFTKeyValueListModifyable < FFTKeyValueList, NSObject, JavaObject >
- (void)addWithNSString:(NSString *)key
    withFFTKeyValueList:(id<FFTKeyValueList>)newKvl;

- (void)removeWithNSString:(NSString *)key;

- (void)removeByValueWithNSString:(NSString *)key
                     withNSString:(NSString *)value;

- (void)setToValueWithNSString:(NSString *)key
           withFFTKeyValueList:(id<FFTKeyValueList>)newKvl;

@end

__attribute__((always_inline)) inline void FFTKeyValueListModifyable_init() {}

#define ComSponbergFluidUtilKeyValueListModifyable FFTKeyValueListModifyable

#endif // _FFTKeyValueListModifyable_H_
