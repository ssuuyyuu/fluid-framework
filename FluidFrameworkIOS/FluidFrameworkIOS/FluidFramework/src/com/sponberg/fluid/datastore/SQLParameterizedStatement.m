//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src-delomboked/com/sponberg/fluid/datastore/SQLParameterizedStatement.java
//

#include "com/sponberg/fluid/datastore/SQLParameterizedStatement.h"
#include "java/util/ArrayList.h"

@implementation FFTSQLParameterizedStatement

- (id)initWithNSString:(NSString *)unboundSql
 withJavaUtilArrayList:(JavaUtilArrayList *)updateParamsInOrder
 withJavaUtilArrayList:(JavaUtilArrayList *)whereParamsInOrder {
  if (self = [super init]) {
    self->unboundSql_ = unboundSql;
    self->updateParamsInOrder_ = updateParamsInOrder;
    self->whereParamsInOrder_ = whereParamsInOrder;
  }
  return self;
}

- (BOOL)hasUpdateParams {
  return updateParamsInOrder_ != nil && [updateParamsInOrder_ size] > 0;
}

- (NSString *)getUnboundSql {
  return self->unboundSql_;
}

- (JavaUtilArrayList *)getUpdateParamsInOrder {
  return self->updateParamsInOrder_;
}

- (JavaUtilArrayList *)getWhereParamsInOrder {
  return self->whereParamsInOrder_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"SQLParameterizedStatement(unboundSql=%@, updateParamsInOrder=%@, whereParamsInOrder=%@)", [self getUnboundSql], [self getUpdateParamsInOrder], [self getWhereParamsInOrder]];
}

- (void)copyAllFieldsTo:(FFTSQLParameterizedStatement *)other {
  [super copyAllFieldsTo:other];
  other->unboundSql_ = unboundSql_;
  other->updateParamsInOrder_ = updateParamsInOrder_;
  other->whereParamsInOrder_ = whereParamsInOrder_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilArrayList:withJavaUtilArrayList:", "SQLParameterizedStatement", NULL, 0x1, NULL },
    { "hasUpdateParams", NULL, "Z", 0x1, NULL },
    { "getUnboundSql", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getUpdateParamsInOrder", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "getWhereParamsInOrder", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "unboundSql_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "updateParamsInOrder_", NULL, 0x10, "Ljava.util.ArrayList;", NULL,  },
    { "whereParamsInOrder_", NULL, 0x10, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _FFTSQLParameterizedStatement = { "SQLParameterizedStatement", "com.sponberg.fluid.datastore", NULL, 0x1, 6, methods, 3, fields, 0, NULL};
  return &_FFTSQLParameterizedStatement;
}

@end

@implementation FFTSQLParameterizedStatement_Pair

- (id)initWithNSString:(NSString *)key
                withId:(id)value {
  if (self = [super init]) {
    self->key_ = key;
    self->value_ = value;
  }
  return self;
}

- (NSString *)getKey {
  return key_;
}

- (id)getValue {
  return value_;
}

- (void)copyAllFieldsTo:(FFTSQLParameterizedStatement_Pair *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->value_ = value_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withId:", "Pair", NULL, 0x1, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getValue", NULL, "Ljava.lang.Object;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "key_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "value_", NULL, 0x10, "Ljava.lang.Object;", NULL,  },
  };
  static J2ObjcClassInfo _FFTSQLParameterizedStatement_Pair = { "Pair", "com.sponberg.fluid.datastore", "SQLParameterizedStatement", 0x9, 3, methods, 2, fields, 0, NULL};
  return &_FFTSQLParameterizedStatement_Pair;
}

@end