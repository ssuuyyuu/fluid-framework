//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/UIService.java
//

#ifndef _FFTUIService_H_
#define _FFTUIService_H_

@class FFTModalView;
@class IOSObjectArray;
@protocol FFTCallback;

#import "JreEmulation.h"

@protocol FFTUIService < NSObject, JavaObject >

- (void)removeSplashScreenWithNSString:(NSString *)firstScreenId
                           withBoolean:(BOOL)insteadShowCurrentScreenIfAny;

- (void)pushLayoutWithNSString:(NSString *)screenId;

- (void)pushLayoutWithNSString:(NSString *)screenId
                   withBoolean:(BOOL)animated;

- (void)popLayout;

- (void)setLayoutWithNSString:(NSString *)screenId
                  withBoolean:(BOOL)stack;

- (void)showModalViewWithFFTModalView:(FFTModalView *)modalView;

- (void)dismissModalViewWithFFTModalView:(FFTModalView *)modalView;

- (void)closeCurrentLayout;

- (void)showAlertWithNSString:(NSString *)title
                 withNSString:(NSString *)message
                 withNSString:(NSString *)buttonText;

- (void)showAlertWithNSString:(NSString *)title
                 withNSString:(NSString *)message
                 withNSString:(NSString *)buttonText
              withFFTCallback:(id<FFTCallback>)callback;

- (float)computeHeightOfTextWithNSString:(NSString *)text
                               withFloat:(float)width
                            withNSString:(NSString *)fontName
                               withFloat:(float)fontSizeInUnits;

- (int)getScreenWidthInPixels;

- (int)getScreenHeightInPixels;

- (void)refreshMenuButtons;

- (void)grabFocusForViewWithNSString:(NSString *)viewId;

- (void)hideKeyboard;

- (void)setLayoutStackWithNSStringArray:(IOSObjectArray *)screenIds;

- (void)scrollToBottomWithNSString:(NSString *)viewPath
                      withNSString:(NSString *)viewId;

- (BOOL)isOrientationLandscape;

- (NSString *)getCurrentScreenId;

@end

__attribute__((always_inline)) inline void FFTUIService_init() {}

#define ComSponbergFluidLayoutUIService FFTUIService

#endif // _FFTUIService_H_
