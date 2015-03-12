//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/util/FileResourceService.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/sponberg/fluid/util/FileResourceService.h"
#include "com/sponberg/fluid/util/StreamUtil.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"

@implementation FFTFileResourceService

NSString * FFTFileResourceService_kRoot_ = @"resources";

- (NSString *)getResourceAsStringWithNSString:(NSString *)dir
                                 withNSString:(NSString *)name {
  if (![((NSString *) nil_chk(dir)) isEqual:@""]) {
    dir = [NSString stringWithFormat:@"%@/", dir];
  }
  JavaIoFile *file;
  if (workingDir_ == nil) {
    file = [[JavaIoFile alloc] initWithNSString:[NSString stringWithFormat:@"resources/%@%@", dir, name]];
  }
  else {
    file = [[JavaIoFile alloc] initWithNSString:[NSString stringWithFormat:@"%@/resources/%@%@", workingDir_, dir, name]];
  }
  @try {
    return [FFTStreamUtil fileToStringWithNSString:[((JavaIoFile *) nil_chk(file)) getAbsolutePath]];
  }
  @catch (JavaIoIOException *e) {
    return nil;
  }
}

- (IOSByteArray *)getResourceAsBytesWithNSString:(NSString *)dir
                                    withNSString:(NSString *)name {
  return [((NSString *) nil_chk([self getResourceAsStringWithNSString:dir withNSString:name])) getBytes];
}

- (NSString *)getWorkingDir {
  return workingDir_;
}

- (void)setWorkingDirWithNSString:(NSString *)workingDir {
  self->workingDir_ = workingDir;
}

- (void)saveResourceWithNSString:(NSString *)dir
                    withNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)bytes
                     withBoolean:(BOOL)excludeFromBackup {
  @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Not implemented"];
}

- (BOOL)resourceExistsWithNSString:(NSString *)dir
                      withNSString:(NSString *)name {
  @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Not implemented"];
}

- (id)init {
  if (self = [super init]) {
    workingDir_ = nil;
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTFileResourceService *)other {
  [super copyAllFieldsTo:other];
  other->workingDir_ = workingDir_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getResourceAsStringWithNSString:withNSString:", "getResourceAsString", "Ljava.lang.String;", 0x1, NULL },
    { "getResourceAsBytesWithNSString:withNSString:", "getResourceAsBytes", "[B", 0x1, NULL },
    { "getWorkingDir", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setWorkingDirWithNSString:", "setWorkingDir", "V", 0x1, NULL },
    { "saveResourceWithNSString:withNSString:withByteArray:withBoolean:", "saveResource", "V", 0x1, "Ljava.io.IOException;" },
    { "resourceExistsWithNSString:withNSString:", "resourceExists", "Z", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "kRoot_", NULL, 0x1a, "Ljava.lang.String;", &FFTFileResourceService_kRoot_,  },
    { "workingDir_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTFileResourceService = { "FileResourceService", "com.sponberg.fluid.util", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_FFTFileResourceService;
}

@end