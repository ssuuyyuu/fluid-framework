//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/app/datastore/Datastore.java
//

#ifndef _FADatastore_H_
#define _FADatastore_H_

@class FADSPhoto;
@class FFTSQLResultList;

#import "JreEmulation.h"

@interface FADatastore : NSObject {
}

+ (FFTSQLResultList *)getBookNamesWhereIdGreaterThanWithInt:(int)i;

+ (void)insertPhotoWithFADSPhoto:(FADSPhoto *)photo;

- (id)init;

@end

__attribute__((always_inline)) inline void FADatastore_init() {}

typedef FADatastore ComSponbergAppDatastoreDatastore;

#endif // _FADatastore_H_
