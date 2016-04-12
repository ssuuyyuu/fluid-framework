//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/JsonUtil.java
//

#ifndef _FFTJsonUtil_H_
#define _FFTJsonUtil_H_

@class FFTJsonArray;
@class FFTJsonObject;
@class FFTJsonValue;
@class IOSClass;
@class IOSObjectArray;
@class JavaLangReflectMethod;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface FFTJsonUtil : NSObject {
}

+ (BOOL)isUnderscoreSeparatesWords;

+ (void)getRandom;

+ (void)setUnderscoreSeparatesWordsWithBoolean:(BOOL)underscoreSeparatesWords;

+ (void)setValuesToWithId:(id)object
        withFFTJsonObject:(FFTJsonObject *)json;

+ (void)setValuesToHelperWithId:(id)object
              withFFTJsonObject:(FFTJsonObject *)json;

+ (NSString *)iOSGetJsonNameWithId:(id)object
                      withNSString:(NSString *)name;

+ (void)invokeIOSNativeSetWithId:(id)object
                    withNSString:(NSString *)methodName
                          withId:(id)parameter;

+ (void)invokeGetAndSetWithIOSClass:(IOSClass *)clazz
                       withNSString:(NSString *)name
                             withId:(id)object
          withJavaLangReflectMethod:(JavaLangReflectMethod *)setter
                  withFFTJsonObject:(FFTJsonObject *)json;

+ (NSString *)objectToJsonStringWithId:(id)object;

+ (NSString *)listToJsonStringWithJavaUtilList:(id<JavaUtilList>)list;

+ (FFTJsonArray *)listToJsonArrayWithJavaUtilList:(id<JavaUtilList>)list;

+ (id)jsonArrayToObjectArrayWithNSString:(NSString *)jsonArrayString
                            withIOSClass:(IOSClass *)type;

+ (id)jsonObjectToObjectWithNSString:(NSString *)jsonString
                        withIOSClass:(IOSClass *)type;

+ (id<JavaUtilMap>)jsonObjectToMapWithNSString:(NSString *)jsonMapString
                                  withIOSClass:(IOSClass *)mapType
                                  withIOSClass:(IOSClass *)type;

+ (FFTJsonArray *)arrayToJsonArrayWithNSObjectArray:(IOSObjectArray *)list;

+ (FFTJsonObject *)mapToJsonObjectWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (FFTJsonObject *)toJsonObjectWithId:(id)object;

+ (NSString *)getJsonNameWithNSString:(NSString *)name;

+ (id)getJsonValueWithNSString:(NSString *)name
                  withIOSClass:(IOSClass *)type
             withFFTJsonObject:(FFTJsonObject *)json
                        withId:(id)rootObject;

+ (id)getJsonValueWithNSStringArray:(IOSObjectArray *)names
                       withIOSClass:(IOSClass *)type
                  withFFTJsonObject:(FFTJsonObject *)json
                            withInt:(int)i
                             withId:(id)rootObject;

+ (id)createArrayFromJsonObjectWithFFTJsonValue:(FFTJsonValue *)object
                                   withIOSClass:(IOSClass *)type;

+ (id<JavaUtilMap>)createMapFromJsonObjectWithFFTJsonValue:(FFTJsonValue *)object
                                              withIOSClass:(IOSClass *)mapType
                                              withIOSClass:(IOSClass *)objectType;

+ (id)createListFromJsonObjectWithFFTJsonValue:(FFTJsonValue *)object
                                  withIOSClass:(IOSClass *)listType
                                  withIOSClass:(IOSClass *)objectType;

+ (id)createObjectFromJsonObjectWithFFTJsonValue:(FFTJsonValue *)object
                                    withIOSClass:(IOSClass *)type;

+ (void)setJsonValueWithNSString:(NSString *)jsonName
                          withId:(id)value
               withFFTJsonObject:(FFTJsonObject *)json;

+ (JavaLangReflectMethod *)getSetterMethodWithIOSClass:(IOSClass *)object
                                          withNSString:(NSString *)name
                                          withIOSClass:(IOSClass *)type;

+ (FFTJsonObject *)getJsonObjectWithFFTJsonObject:(FFTJsonObject *)object
                                     withNSString:(NSString *)key;

+ (NSString *)getStringWithFFTJsonObject:(FFTJsonObject *)object
                            withNSString:(NSString *)key;

+ (NSString *)getStringWithFFTJsonObject:(FFTJsonObject *)object
                            withNSString:(NSString *)key
                            withNSString:(NSString *)defaultValue;

+ (int)getIntWithFFTJsonObject:(FFTJsonObject *)object
                  withNSString:(NSString *)key
                       withInt:(int)defaultValue;

+ (float)getFloatWithFFTJsonObject:(FFTJsonObject *)object
                      withNSString:(NSString *)key
                         withFloat:(float)defaultValue;

+ (BOOL)getBooleanWithFFTJsonObject:(FFTJsonObject *)object
                       withNSString:(NSString *)key
                        withBoolean:(BOOL)defaultValue;

- (id)init;

@end

__attribute__((always_inline)) inline void FFTJsonUtil_init() {}

FOUNDATION_EXPORT BOOL FFTJsonUtil_underscoreSeparatesWords_;
J2OBJC_STATIC_FIELD_GETTER(FFTJsonUtil, underscoreSeparatesWords_, BOOL)
J2OBJC_STATIC_FIELD_REF_GETTER(FFTJsonUtil, underscoreSeparatesWords_, BOOL)

typedef FFTJsonUtil ComSponbergFluidUtilJsonUtil;

@protocol FFTJsonUtil_TypeMapper < NSObject, JavaObject >

- (IOSClass *)getTypeForFieldWithNSString:(NSString *)field;

@end

__attribute__((always_inline)) inline void FFTJsonUtil_TypeMapper_init() {}

#endif // _FFTJsonUtil_H_
