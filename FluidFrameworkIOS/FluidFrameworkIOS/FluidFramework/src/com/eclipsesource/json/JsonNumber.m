//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-external/com/eclipsesource/json/JsonNumber.java
//

#include "IOSClass.h"
#include "com/eclipsesource/json/JsonNumber.h"
#include "com/eclipsesource/json/JsonWriter.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"

@implementation FFTJsonNumber

- (id)initWithNSString:(NSString *)string {
  if (self = [super init]) {
    if (string == nil) {
      @throw [[JavaLangNullPointerException alloc] initWithNSString:@"string is null"];
    }
    self->string_ = string;
  }
  return self;
}

- (NSString *)description {
  return string_;
}

- (void)writeWithFFTJsonWriter:(FFTJsonWriter *)writer {
  [((FFTJsonWriter *) nil_chk(writer)) writeWithNSString:string_];
}

- (BOOL)isNumber {
  return YES;
}

- (int)asInt {
  return [JavaLangInteger parseIntWithNSString:string_ withInt:10];
}

- (long long int)asLong {
  return [JavaLangLong parseLongWithNSString:string_ withInt:10];
}

- (float)asFloat {
  return [JavaLangFloat parseFloatWithNSString:string_];
}

- (double)asDouble {
  return [JavaLangDouble parseDoubleWithNSString:string_];
}

- (NSUInteger)hash {
  return ((int) [((NSString *) nil_chk(string_)) hash]);
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if (object == nil) {
    return NO;
  }
  if ([self getClass] != [nil_chk(object) getClass]) {
    return NO;
  }
  FFTJsonNumber *other = (FFTJsonNumber *) check_class_cast(object, [FFTJsonNumber class]);
  return [((NSString *) nil_chk(string_)) isEqual:other->string_];
}

- (void)copyAllFieldsTo:(FFTJsonNumber *)other {
  [super copyAllFieldsTo:other];
  other->string_ = string_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "JsonNumber", NULL, 0x0, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "writeWithFFTJsonWriter:", "write", "V", 0x4, "Ljava.io.IOException;" },
    { "isNumber", NULL, "Z", 0x1, NULL },
    { "asInt", NULL, "I", 0x1, NULL },
    { "asLong", NULL, "J", 0x1, NULL },
    { "asFloat", NULL, "F", 0x1, NULL },
    { "asDouble", NULL, "D", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "string_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTJsonNumber = { "JsonNumber", "com.eclipsesource.json", NULL, 0x0, 10, methods, 1, fields, 0, NULL};
  return &_FFTJsonNumber;
}

@end