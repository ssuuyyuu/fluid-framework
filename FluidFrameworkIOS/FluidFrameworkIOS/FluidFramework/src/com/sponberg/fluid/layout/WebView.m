//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/layout/WebView.java
//

#include "com/sponberg/fluid/FluidApp.h"
#include "com/sponberg/fluid/GlobalState.h"
#include "com/sponberg/fluid/ResourceService.h"
#include "com/sponberg/fluid/layout/WebView.h"

@implementation FFTWebView

- (void)generateHtml {
  html_ = [((id<FFTResourceService>) nil_chk([((FFTFluidApp *) nil_chk(FFTGlobalState_get_fluidApp__())) getResourceService])) getResourceAsStringWithNSString:@"webview" withNSString:filename_];
}

- (NSString *)description {
  if (html_ == nil) {
    [self generateHtml];
  }
  return html_;
}

- (NSString *)getFilename {
  return self->filename_;
}

- (NSString *)getHtml {
  return self->html_;
}

- (void)setFilenameWithNSString:(NSString *)filename {
  self->filename_ = filename;
}

- (void)setHtmlWithNSString:(NSString *)html {
  self->html_ = html;
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(FFTWebView *)other {
  [super copyAllFieldsTo:other];
  other->filename_ = filename_;
  other->html_ = html_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "generateHtml", NULL, "V", 0x2, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getFilename", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getHtml", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setFilenameWithNSString:", "setFilename", "V", 0x1, NULL },
    { "setHtmlWithNSString:", "setHtml", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "filename_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "html_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FFTWebView = { "WebView", "com.sponberg.fluid.layout", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_FFTWebView;
}

@end