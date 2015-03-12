//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/app/domain/WeatherDataPoint.java
//

#include "com/sponberg/app/domain/WeatherDataPoint.h"
#include "java/lang/Double.h"
#include "java/lang/Long.h"

@implementation FAWeatherDataPoint

- (JavaLangDouble *)getTemperatureMaxC {
  return [JavaLangDouble valueOfWithDouble:[self getFtoCWithDouble:temperatureMax_]];
}

- (JavaLangDouble *)getTemperatureMinC {
  return [JavaLangDouble valueOfWithDouble:[self getFtoCWithDouble:temperatureMin_]];
}

- (double)getFtoCWithDouble:(double)f {
  return (f - 32) / 1.8;
}

- (JavaLangLong *)getTimeInMillis {
  return [JavaLangLong valueOfWithLong:time_ * 1000];
}

- (JavaLangLong *)getFluidTableRowObjectId {
  return [JavaLangLong valueOfWithLong:time_];
}

- (id)init {
  return [super init];
}

- (long long int)getTime {
  return self->time_;
}

- (NSString *)getIcon {
  return self->icon_;
}

- (double)getPrecipProbability {
  return self->precipProbability_;
}

- (double)getTemperatureMax {
  return self->temperatureMax_;
}

- (double)getTemperatureMin {
  return self->temperatureMin_;
}

- (NSString *)getSummary {
  return self->summary_;
}

- (void)setTimeWithLong:(long long int)time {
  self->time_ = time;
}

- (void)setIconWithNSString:(NSString *)icon {
  self->icon_ = icon;
}

- (void)setPrecipProbabilityWithDouble:(double)precipProbability {
  self->precipProbability_ = precipProbability;
}

- (void)setTemperatureMaxWithDouble:(double)temperatureMax {
  self->temperatureMax_ = temperatureMax;
}

- (void)setTemperatureMinWithDouble:(double)temperatureMin {
  self->temperatureMin_ = temperatureMin;
}

- (void)setSummaryWithNSString:(NSString *)summary {
  self->summary_ = summary;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"WeatherDataPoint(time=%lld, icon=%@, precipProbability=%f, temperatureMax=%f, temperatureMin=%f, summary=%@)", [self getTime], [self getIcon], [self getPrecipProbability], [self getTemperatureMax], [self getTemperatureMin], [self getSummary]];
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o isKindOfClass:[FAWeatherDataPoint class]])) return NO;
  FAWeatherDataPoint *other = (FAWeatherDataPoint *) check_class_cast(o, [FAWeatherDataPoint class]);
  if (![((FAWeatherDataPoint *) nil_chk(other)) canEqualWithId:(id) check_class_cast(self, [NSObject class])]) return NO;
  if ([self getTime] != [other getTime]) return NO;
  return YES;
}

- (BOOL)canEqualWithId:(id)other {
  return [other isKindOfClass:[FAWeatherDataPoint class]];
}

- (NSUInteger)hash {
  int PRIME = 59;
  int result = 1;
  long long int $time = [self getTime];
  result = result * PRIME + (int) ((long long) (((unsigned long long) $time) >> 32) ^ $time);
  return result;
}

- (void)copyAllFieldsTo:(FAWeatherDataPoint *)other {
  [super copyAllFieldsTo:other];
  other->icon_ = icon_;
  other->precipProbability_ = precipProbability_;
  other->summary_ = summary_;
  other->temperatureMax_ = temperatureMax_;
  other->temperatureMin_ = temperatureMin_;
  other->time_ = time_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getTemperatureMaxC", NULL, "Ljava.lang.Double;", 0x1, NULL },
    { "getTemperatureMinC", NULL, "Ljava.lang.Double;", 0x1, NULL },
    { "getFtoCWithDouble:", "getFtoC", "D", 0x1, NULL },
    { "getTimeInMillis", NULL, "Ljava.lang.Long;", 0x1, NULL },
    { "getFluidTableRowObjectId", NULL, "Ljava.lang.Long;", 0x1, NULL },
    { "init", "WeatherDataPoint", NULL, 0x1, NULL },
    { "getTime", NULL, "J", 0x1, NULL },
    { "getIcon", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPrecipProbability", NULL, "D", 0x1, NULL },
    { "getTemperatureMax", NULL, "D", 0x1, NULL },
    { "getTemperatureMin", NULL, "D", 0x1, NULL },
    { "getSummary", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setTimeWithLong:", "setTime", "V", 0x1, NULL },
    { "setIconWithNSString:", "setIcon", "V", 0x1, NULL },
    { "setPrecipProbabilityWithDouble:", "setPrecipProbability", "V", 0x1, NULL },
    { "setTemperatureMaxWithDouble:", "setTemperatureMax", "V", 0x1, NULL },
    { "setTemperatureMinWithDouble:", "setTemperatureMin", "V", 0x1, NULL },
    { "setSummaryWithNSString:", "setSummary", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "canEqualWithId:", "canEqual", "Z", 0x4, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "time_", NULL, 0x0, "J", NULL,  },
    { "icon_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "precipProbability_", NULL, 0x0, "D", NULL,  },
    { "temperatureMax_", NULL, 0x0, "D", NULL,  },
    { "temperatureMin_", NULL, 0x0, "D", NULL,  },
    { "summary_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _FAWeatherDataPoint = { "WeatherDataPoint", "com.sponberg.app.domain", NULL, 0x1, 22, methods, 6, fields, 0, NULL};
  return &_FAWeatherDataPoint;
}

@end