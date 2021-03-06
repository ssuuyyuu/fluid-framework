//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/Subtractor.java
//

#include "com/sponberg/fluid/layout/Subtractor.h"

@implementation FFTSubtractor

- (id)initWithDouble:(double)ratioRelativeToView
        withNSString:(NSString *)relativeToView {
  if (self = [super init]) {
    self->ratioRelativeToView_ = ratioRelativeToView;
    self->relativeToView_ = relativeToView;
  }
  return self;
}

- (id)initWithDouble:(double)fixed {
  if (self = [super init]) {
    self->fixed_ = fixed;
  }
  return self;
}

- (BOOL)isRelativeToView {
  return relativeToView_ != nil;
}

- (double)getRatioRelativeToView {
  return self->ratioRelativeToView_;
}

- (NSString *)getRelativeToView {
  return self->relativeToView_;
}

- (double)getFixed {
  return self->fixed_;
}

- (void)setRatioRelativeToViewWithDouble:(double)ratioRelativeToView {
  self->ratioRelativeToView_ = ratioRelativeToView;
}

- (void)setRelativeToViewWithNSString:(NSString *)relativeToView {
  self->relativeToView_ = relativeToView;
}

- (void)setFixedWithDouble:(double)fixed {
  self->fixed_ = fixed;
}

- (void)copyAllFieldsTo:(FFTSubtractor *)other {
  [super copyAllFieldsTo:other];
  other->fixed_ = fixed_;
  other->ratioRelativeToView_ = ratioRelativeToView_;
  other->relativeToView_ = relativeToView_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithDouble:withNSString:", "Subtractor", NULL, 0x1, NULL },
    { "initWithDouble:", "Subtractor", NULL, 0x1, NULL },
    { "isRelativeToView", NULL, "Z", 0x1, NULL },
    { "getRatioRelativeToView", NULL, "D", 0x1, NULL },
    { "getRelativeToView", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getFixed", NULL, "D", 0x1, NULL },
    { "setRatioRelativeToViewWithDouble:", "setRatioRelativeToView", "V", 0x1, NULL },
    { "setRelativeToViewWithNSString:", "setRelativeToView", "V", 0x1, NULL },
    { "setFixedWithDouble:", "setFixed", "V", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "ratioRelativeToView_", NULL, 0x0, "D", NULL,  },
    { "relativeToView_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "fixed_", NULL, 0x0, "D", NULL,  },
  };
  static J2ObjcClassInfo _FFTSubtractor = { "Subtractor", "com.sponberg.fluid.layout", NULL, 0x1, 9, methods, 3, fields, 0, NULL};
  return &_FFTSubtractor;
}

@end
