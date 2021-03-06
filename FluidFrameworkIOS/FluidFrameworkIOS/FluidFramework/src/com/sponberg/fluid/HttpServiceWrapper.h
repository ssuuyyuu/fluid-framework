//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/HttpServiceWrapper.java
//

#ifndef _FFTHttpServiceWrapper_H_
#define _FFTHttpServiceWrapper_H_

@class FFTHttpServiceWrapper_MapModeEnum;
@class FFTHttpService_HttpAuthorization;
@class JavaUtilHashMap;
@protocol FFTHttpServiceCallback;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/sponberg/fluid/HttpService.h"
#include "java/lang/Enum.h"

@interface FFTHttpServiceWrapper : NSObject < FFTHttpService > {
 @public
  id<FFTHttpService> httpService_;
  FFTHttpServiceWrapper_MapModeEnum *mapMode_;
}

- (id)initWithFFTHttpService:(id<FFTHttpService>)httpService;

- (void)getWithNSString:(NSString *)URL
    withJavaUtilHashMap:(JavaUtilHashMap *)parameters
withFFTHttpService_HttpAuthorization:(FFTHttpService_HttpAuthorization *)auth
withFFTHttpServiceCallback:(id<FFTHttpServiceCallback>)callback;

- (void)getBinaryWithNSString:(NSString *)URL
          withJavaUtilHashMap:(JavaUtilHashMap *)parameters
withFFTHttpService_HttpAuthorization:(FFTHttpService_HttpAuthorization *)auth
   withFFTHttpServiceCallback:(id<FFTHttpServiceCallback>)callback;

- (void)postWithNSString:(NSString *)URL
     withJavaUtilHashMap:(JavaUtilHashMap *)parameters
withFFTHttpService_HttpAuthorization:(FFTHttpService_HttpAuthorization *)auth
withFFTHttpServiceCallback:(id<FFTHttpServiceCallback>)callback;

- (void)postRawWithNSString:(NSString *)URL
               withNSString:(NSString *)rawPost
withFFTHttpService_HttpAuthorization:(FFTHttpService_HttpAuthorization *)auth
 withFFTHttpServiceCallback:(id<FFTHttpServiceCallback>)callback;

- (void)putWithNSString:(NSString *)URL
    withJavaUtilHashMap:(JavaUtilHashMap *)parameters
withFFTHttpService_HttpAuthorization:(FFTHttpService_HttpAuthorization *)auth
withFFTHttpServiceCallback:(id<FFTHttpServiceCallback>)callback;

+ (JavaUtilHashMap *)jsonifyMapsWithJavaUtilMap:(id<JavaUtilMap>)parameters;

+ (NSString *)jsonifyMapsHelperWithJavaUtilMap:(id<JavaUtilMap>)parameters;

+ (JavaUtilHashMap *)bracketifyMapsWithJavaUtilMap:(id<JavaUtilMap>)parameters;

+ (void)bracketifyMapsHelperWithJavaUtilHashMap:(JavaUtilHashMap *)map
                                   withNSString:(NSString *)prefix
                                withJavaUtilMap:(id<JavaUtilMap>)parameters;

- (id<FFTHttpService>)getHttpService;

- (FFTHttpServiceWrapper_MapModeEnum *)getMapMode;

- (void)setMapModeWithFFTHttpServiceWrapper_MapModeEnum:(FFTHttpServiceWrapper_MapModeEnum *)mapMode;

- (BOOL)isEqual:(id)o;

- (BOOL)canEqualWithId:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (void)copyAllFieldsTo:(FFTHttpServiceWrapper *)other;

@end

__attribute__((always_inline)) inline void FFTHttpServiceWrapper_init() {}

J2OBJC_FIELD_SETTER(FFTHttpServiceWrapper, httpService_, id<FFTHttpService>)
J2OBJC_FIELD_SETTER(FFTHttpServiceWrapper, mapMode_, FFTHttpServiceWrapper_MapModeEnum *)

typedef FFTHttpServiceWrapper ComSponbergFluidHttpServiceWrapper;

typedef enum {
  FFTHttpServiceWrapper_MapMode_Jsonify = 0,
  FFTHttpServiceWrapper_MapMode_Bracketify = 1,
} FFTHttpServiceWrapper_MapMode;

@interface FFTHttpServiceWrapper_MapModeEnum : JavaLangEnum < NSCopying > {
}
+ (IOSObjectArray *)values;
+ (FFTHttpServiceWrapper_MapModeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal;
@end

FOUNDATION_EXPORT BOOL FFTHttpServiceWrapper_MapModeEnum_initialized;
J2OBJC_STATIC_INIT(FFTHttpServiceWrapper_MapModeEnum)

FOUNDATION_EXPORT FFTHttpServiceWrapper_MapModeEnum *FFTHttpServiceWrapper_MapModeEnum_values[];

#define FFTHttpServiceWrapper_MapModeEnum_Jsonify FFTHttpServiceWrapper_MapModeEnum_values[FFTHttpServiceWrapper_MapMode_Jsonify]
J2OBJC_STATIC_FIELD_GETTER(FFTHttpServiceWrapper_MapModeEnum, Jsonify, FFTHttpServiceWrapper_MapModeEnum *)

#define FFTHttpServiceWrapper_MapModeEnum_Bracketify FFTHttpServiceWrapper_MapModeEnum_values[FFTHttpServiceWrapper_MapMode_Bracketify]
J2OBJC_STATIC_FIELD_GETTER(FFTHttpServiceWrapper_MapModeEnum, Bracketify, FFTHttpServiceWrapper_MapModeEnum *)

#endif // _FFTHttpServiceWrapper_H_
