//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/FluidViewFactory.java
//

#include "com/sponberg/fluid/layout/FluidViewFactory.h"
#include "com/sponberg/fluid/layout/ViewPosition.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

@implementation FFTFluidViewFactory

- (void)registerViewWithNSString:(NSString *)type
withFFTFluidViewFactory_FluidViewBuilder:(id<FFTFluidViewFactory_FluidViewBuilder>)builder {
  (void) [((JavaUtilHashMap *) nil_chk(registeredViewTypes_)) putWithId:type withId:builder];
}

- (id)createViewWithNSString:(NSString *)type
         withFFTViewPosition:(FFTViewPosition *)view
                      withId:(id)userInfo {
  id<FFTFluidViewFactory_FluidViewBuilder> builder = [((JavaUtilHashMap *) nil_chk(registeredViewTypes_)) getWithId:type];
  if (builder == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"There is no builder registered for %@", type]];
  }
  return [((id<FFTFluidViewFactory_FluidViewBuilder>) nil_chk([registeredViewTypes_ getWithId:type])) createFluidViewWithFFTViewPosition:view withId:userInfo];
}

- (void)updateViewWithNSString:(NSString *)type
                        withId:(id)fluidView
           withFFTViewPosition:(FFTViewPosition *)view
                        withId:(id)userInfo {
  id<FFTFluidViewFactory_FluidViewBuilder> builder = [((JavaUtilHashMap *) nil_chk(registeredViewTypes_)) getWithId:type];
  if (builder == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"There is no builder registered for %@", type]];
  }
  [((id<FFTFluidViewFactory_FluidViewBuilder>) nil_chk([registeredViewTypes_ getWithId:type])) updateFluidViewWithId:fluidView withFFTViewPosition:view withId:userInfo];
}

- (void)cleanupViewWithNSString:(NSString *)type
                         withId:(id)fluidView {
  id<FFTFluidViewFactory_FluidViewBuilder> builder = [((JavaUtilHashMap *) nil_chk(registeredViewTypes_)) getWithId:type];
  if (builder == nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"There is no builder registered for %@", type]];
  }
  [((id<FFTFluidViewFactory_FluidViewBuilder>) nil_chk([registeredViewTypes_ getWithId:type])) cleanupFluidViewWithId:fluidView];
}

- (id)init {
  if (self = [super init]) {
    registeredViewTypes_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTFluidViewFactory *)other {
  [super copyAllFieldsTo:other];
  other->registeredViewTypes_ = registeredViewTypes_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "registerViewWithNSString:withFFTFluidViewFactory_FluidViewBuilder:", "registerView", "V", 0x1, NULL },
    { "createViewWithNSString:withFFTViewPosition:withId:", "createView", "Ljava.lang.Object;", 0x1, NULL },
    { "updateViewWithNSString:withId:withFFTViewPosition:withId:", "updateView", "V", 0x1, NULL },
    { "cleanupViewWithNSString:withId:", "cleanupView", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "registeredViewTypes_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
  };
  static J2ObjcClassInfo _FFTFluidViewFactory = { "FluidViewFactory", "com.sponberg.fluid.layout", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_FFTFluidViewFactory;
}

@end

@interface FFTFluidViewFactory_FluidViewBuilder : NSObject
@end

@implementation FFTFluidViewFactory_FluidViewBuilder

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "createFluidViewWithFFTViewPosition:withId:", "createFluidView", "Ljava.lang.Object;", 0x401, NULL },
    { "updateFluidViewWithId:withFFTViewPosition:withId:", "updateFluidView", "V", 0x401, NULL },
    { "cleanupFluidViewWithId:", "cleanupFluidView", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _FFTFluidViewFactory_FluidViewBuilder = { "FluidViewBuilder", "com.sponberg.fluid.layout", "FluidViewFactory", 0x209, 3, methods, 0, NULL, 0, NULL};
  return &_FFTFluidViewFactory_FluidViewBuilder;
}

@end