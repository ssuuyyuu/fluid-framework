//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/GlobalState.java
//

#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"

@implementation FFTGlobalState

FFTFluidApp * FFTGlobalState_fluidApp__;

+ (FFTFluidApp *)fluidApp {
  return FFTGlobalState_fluidApp__;
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "fluidApp", NULL, "Lcom.sponberg.fluid.FluidApp;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "fluidApp__", "fluidApp", 0x9, "Lcom.sponberg.fluid.FluidApp;", &FFTGlobalState_fluidApp__,  },
  };
  static J2ObjcClassInfo _FFTGlobalState = { "GlobalState", "com.sponberg.fluid", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_FFTGlobalState;
}

@end
