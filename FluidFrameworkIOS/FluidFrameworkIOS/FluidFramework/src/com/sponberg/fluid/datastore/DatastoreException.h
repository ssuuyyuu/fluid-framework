//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/datastore/DatastoreException.java
//

#ifndef _FFTDatastoreException_H_
#define _FFTDatastoreException_H_

@class JavaLangException;

#import "JreEmulation.h"
#include "java/lang/RuntimeException.h"

@interface FFTDatastoreException : JavaLangRuntimeException {
}

- (id)initWithNSString:(NSString *)message;

- (id)initWithJavaLangException:(JavaLangException *)e;

@end

__attribute__((always_inline)) inline void FFTDatastoreException_init() {}

typedef FFTDatastoreException ComSponbergFluidDatastoreDatastoreException;

#endif // _FFTDatastoreException_H_
