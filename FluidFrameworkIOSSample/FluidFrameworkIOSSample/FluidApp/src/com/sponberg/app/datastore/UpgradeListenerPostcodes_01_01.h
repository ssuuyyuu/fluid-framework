//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/app/datastore/UpgradeListenerPostcodes_01_01.java
//

#ifndef _FAUpgradeListenerPostcodes_01_01_H_
#define _FAUpgradeListenerPostcodes_01_01_H_

@class FFTDatastoreVersion;

#import "JreEmulation.h"
#include "com/sponberg/fluid/datastore/UpgradeListener.h"

@interface FAUpgradeListenerPostcodes_01_01 : NSObject < FFTUpgradeListener > {
}

- (BOOL)databaseWasUpgradedWithFFTDatastoreVersion:(FFTDatastoreVersion *)version_;

- (NSString *)getDatastoreName;

- (id)init;

@end

__attribute__((always_inline)) inline void FAUpgradeListenerPostcodes_01_01_init() {}

FOUNDATION_EXPORT NSString *FAUpgradeListenerPostcodes_01_01_datastoreName_;
J2OBJC_STATIC_FIELD_GETTER(FAUpgradeListenerPostcodes_01_01, datastoreName_, NSString *)

typedef FAUpgradeListenerPostcodes_01_01 ComSponbergAppDatastoreUpgradeListenerPostcodes_01_01;

#endif // _FAUpgradeListenerPostcodes_01_01_H_