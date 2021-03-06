//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/ViewBehaviorLabel.java
//

#ifndef _FFTViewBehaviorLabel_H_
#define _FFTViewBehaviorLabel_H_

@class FFTColor;
@class FFTLRUCache;
@class FFTView;
@class JavaLangDouble;
@protocol FFTKeyValueList;

#import "JreEmulation.h"
#include "com/sponberg/fluid/layout/ViewBehaviorBaseLabel.h"

@interface FFTViewBehaviorLabel : FFTViewBehaviorBaseLabel {
 @public
  JavaLangDouble *minHeight_;
  FFTColor *textColorPressed_;
}

- (id)initWithFFTKeyValueList:(id<FFTKeyValueList>)properties;

- (BOOL)supportsHeightCompute;

- (float)computeHeightWithBoolean:(BOOL)landcape
                     withNSString:(NSString *)dataModelPrefix
                      withFFTView:(FFTView *)view
                      withBoolean:(BOOL)useCache;

- (NSString *)description;

- (JavaLangDouble *)getMinHeight;

- (FFTColor *)getTextColorPressed;

- (void)setMinHeightWithJavaLangDouble:(JavaLangDouble *)minHeight;

- (void)setTextColorPressedWithFFTColor:(FFTColor *)textColorPressed;

- (void)copyAllFieldsTo:(FFTViewBehaviorLabel *)other;

@end

FOUNDATION_EXPORT BOOL FFTViewBehaviorLabel_initialized;
J2OBJC_STATIC_INIT(FFTViewBehaviorLabel)

J2OBJC_FIELD_SETTER(FFTViewBehaviorLabel, minHeight_, JavaLangDouble *)
J2OBJC_FIELD_SETTER(FFTViewBehaviorLabel, textColorPressed_, FFTColor *)

FOUNDATION_EXPORT FFTLRUCache *FFTViewBehaviorLabel_cache_;
J2OBJC_STATIC_FIELD_GETTER(FFTViewBehaviorLabel, cache_, FFTLRUCache *)
J2OBJC_STATIC_FIELD_SETTER(FFTViewBehaviorLabel, cache_, FFTLRUCache *)

typedef FFTViewBehaviorLabel ComSponbergFluidLayoutViewBehaviorLabel;

#endif // _FFTViewBehaviorLabel_H_
