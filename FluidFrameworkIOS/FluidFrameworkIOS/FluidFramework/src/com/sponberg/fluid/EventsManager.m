//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/EventsManager.java
//

#include "IOSObjectArray.h"
#include "com/sponberg/fluid/EventsManager.h"
#include "com/sponberg/fluid/layout/ActionListener.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

@implementation FFTEventsManager

- (void)addEventListenerWithFFTActionListener:(id<FFTActionListener>)listener
                            withNSStringArray:(IOSObjectArray *)keyPath {
  [self addEventListenerHelperWithFFTEventsManager_EventListenerGroup:rootEventListenerGroup_ withNSStringArray:keyPath withInt:0 withFFTActionListener:listener];
}

- (void)userTappedWithNSString:(NSString *)keyPath
withFFTActionListener_EventInfo:(FFTActionListener_EventInfo *)eventInfo {
  IOSObjectArray *tokens = [self getTokensFromPathWithNSString:keyPath];
  FFTEventsManager_EventListenerGroup *group = [self getEventListenerGroupWithFFTEventsManager_EventListenerGroup:rootEventListenerGroup_ withNSStringArray:tokens withInt:0];
  if (group != nil) {
    for (id<FFTActionListener> __strong listener in nil_chk([group getListener])) {
      [((id<FFTActionListener>) nil_chk(listener)) userTappedWithFFTActionListener_EventInfo:eventInfo];
    }
  }
}

- (BOOL)isListeningForTapAtWithNSString:(NSString *)viewPath {
  IOSObjectArray *tokens = [self getTokensFromPathWithNSString:viewPath];
  FFTEventsManager_EventListenerGroup *group = [self getEventListenerGroupWithFFTEventsManager_EventListenerGroup:rootEventListenerGroup_ withNSStringArray:tokens withInt:0];
  return group != nil && [((JavaUtilArrayList *) nil_chk([group getListener])) size] > 0;
}

- (void)userChangedValueToWithNSString:(NSString *)keyPath
       withFFTActionListener_EventInfo:(FFTActionListener_EventInfo *)eventInfo
                                withId:(id)value {
  IOSObjectArray *tokens = [self getTokensFromPathWithNSString:keyPath];
  FFTEventsManager_EventListenerGroup *group = [self getEventListenerGroupWithFFTEventsManager_EventListenerGroup:rootEventListenerGroup_ withNSStringArray:tokens withInt:0];
  if (group != nil) {
    for (id<FFTActionListener> __strong listener in nil_chk([group getListener])) {
      [((id<FFTActionListener>) nil_chk(listener)) userChangedValueToWithFFTActionListener_EventInfo:eventInfo withId:value];
    }
  }
}

- (void)userCancelledWithNSString:(NSString *)keyPath {
  IOSObjectArray *tokens = [self getTokensFromPathWithNSString:keyPath];
  FFTEventsManager_EventListenerGroup *group = [self getEventListenerGroupWithFFTEventsManager_EventListenerGroup:rootEventListenerGroup_ withNSStringArray:tokens withInt:0];
  if (group != nil) {
    for (id<FFTActionListener> __strong listener in nil_chk([group getListener])) {
      [((id<FFTActionListener>) nil_chk(listener)) userCancelled];
    }
  }
}

- (FFTEventsManager_EventListenerGroup *)getEventListenerGroupWithFFTEventsManager_EventListenerGroup:(FFTEventsManager_EventListenerGroup *)group
                                                                                    withNSStringArray:(IOSObjectArray *)tokens
                                                                                              withInt:(int)tokenIndex {
  NSString *key = IOSObjectArray_Get(nil_chk(tokens), tokenIndex);
  FFTEventsManager_EventListenerGroup *nextGroup = [((FFTEventsManager_EventListenerGroup *) nil_chk(group)) getWithNSString:key];
  if (nextGroup == nil) {
    return nil;
  }
  if (tokenIndex == (int) [tokens count] - 1) {
    return nextGroup;
  }
  else {
    return [self getEventListenerGroupWithFFTEventsManager_EventListenerGroup:nextGroup withNSStringArray:tokens withInt:tokenIndex + 1];
  }
}

- (void)addEventListenerHelperWithFFTEventsManager_EventListenerGroup:(FFTEventsManager_EventListenerGroup *)group
                                                    withNSStringArray:(IOSObjectArray *)tokens
                                                              withInt:(int)tokenIndex
                                                withFFTActionListener:(id<FFTActionListener>)listener {
  NSString *key = IOSObjectArray_Get(nil_chk(tokens), tokenIndex);
  FFTEventsManager_EventListenerGroup *nextGroup = [((FFTEventsManager_EventListenerGroup *) nil_chk(group)) getWithNSString:key];
  if (nextGroup == nil) {
    nextGroup = [[FFTEventsManager_EventListenerGroup alloc] init];
    [group putWithNSString:key withFFTEventsManager_EventListenerGroup:nextGroup];
  }
  if (tokenIndex == (int) [tokens count] - 1) {
    [((FFTEventsManager_EventListenerGroup *) nil_chk(nextGroup)) addListenerWithFFTActionListener:listener];
  }
  else {
    [self addEventListenerHelperWithFFTEventsManager_EventListenerGroup:nextGroup withNSStringArray:tokens withInt:tokenIndex + 1 withFFTActionListener:listener];
  }
}

- (IOSObjectArray *)getTokensFromPathWithNSString:(NSString *)keyPath {
  IOSObjectArray *tokens = [((NSString *) nil_chk(keyPath)) split:@"\\."];
  for (int i = 0; i < (int) [((IOSObjectArray *) nil_chk(tokens)) count]; i++) {
    int index = [((NSString *) IOSObjectArray_Get(tokens, i)) indexOfString:@"|"];
    if (index != -1) {
      (void) IOSObjectArray_Set(tokens, i, [((NSString *) IOSObjectArray_Get(tokens, i)) substring:0 endIndex:index]);
    }
  }
  return tokens;
}

- (id)init {
  if (self = [super init]) {
    rootEventListenerGroup_ = [[FFTEventsManager_EventListenerGroup alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTEventsManager *)other {
  [super copyAllFieldsTo:other];
  other->rootEventListenerGroup_ = rootEventListenerGroup_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addEventListenerWithFFTActionListener:withNSStringArray:", "addEventListener", "V", 0x81, NULL },
    { "userTappedWithNSString:withFFTActionListener_EventInfo:", "userTapped", "V", 0x1, NULL },
    { "isListeningForTapAtWithNSString:", "isListeningForTapAt", "Z", 0x1, NULL },
    { "userChangedValueToWithNSString:withFFTActionListener_EventInfo:withId:", "userChangedValueTo", "V", 0x1, NULL },
    { "userCancelledWithNSString:", "userCancelled", "V", 0x1, NULL },
    { "getEventListenerGroupWithFFTEventsManager_EventListenerGroup:withNSStringArray:withInt:", "getEventListenerGroup", "Lcom.sponberg.fluid.EventsManager$EventListenerGroup;", 0x1, NULL },
    { "addEventListenerHelperWithFFTEventsManager_EventListenerGroup:withNSStringArray:withInt:withFFTActionListener:", "addEventListenerHelper", "V", 0x4, NULL },
    { "getTokensFromPathWithNSString:", "getTokensFromPath", "[Ljava.lang.String;", 0x2, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "rootEventListenerGroup_", NULL, 0x0, "Lcom.sponberg.fluid.EventsManager$EventListenerGroup;", NULL,  },
  };
  static J2ObjcClassInfo _FFTEventsManager = { "EventsManager", "com.sponberg.fluid", NULL, 0x1, 9, methods, 1, fields, 0, NULL};
  return &_FFTEventsManager;
}

@end

@implementation FFTEventsManager_EventListenerGroup

- (void)addListenerWithFFTActionListener:(id<FFTActionListener>)listener {
  [((JavaUtilArrayList *) nil_chk(listeners_)) addWithId:listener];
}

- (JavaUtilArrayList *)getListener {
  return listeners_;
}

- (FFTEventsManager_EventListenerGroup *)getWithNSString:(NSString *)key {
  return [((JavaUtilHashMap *) nil_chk(listenerGroups_)) getWithId:key];
}

- (void)putWithNSString:(NSString *)key
withFFTEventsManager_EventListenerGroup:(FFTEventsManager_EventListenerGroup *)group {
  (void) [((JavaUtilHashMap *) nil_chk(listenerGroups_)) putWithId:key withId:group];
}

- (id)init {
  if (self = [super init]) {
    listenerGroups_ = [[JavaUtilHashMap alloc] init];
    listeners_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(FFTEventsManager_EventListenerGroup *)other {
  [super copyAllFieldsTo:other];
  other->listenerGroups_ = listenerGroups_;
  other->listeners_ = listeners_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addListenerWithFFTActionListener:", "addListener", "V", 0x1, NULL },
    { "getListener", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "getWithNSString:", "get", "Lcom.sponberg.fluid.EventsManager$EventListenerGroup;", 0x0, NULL },
    { "putWithNSString:withFFTEventsManager_EventListenerGroup:", "put", "V", 0x0, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "listenerGroups_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
    { "listeners_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTEventsManager_EventListenerGroup = { "EventListenerGroup", "com.sponberg.fluid", "EventsManager", 0x8, 5, methods, 2, fields, 0, NULL};
  return &_FFTEventsManager_EventListenerGroup;
}

@end