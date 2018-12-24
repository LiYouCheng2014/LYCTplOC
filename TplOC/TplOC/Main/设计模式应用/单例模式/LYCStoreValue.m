//
//  LYCStoreValue.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/24.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCStoreValue.h"

#import <FastCoding/FastCoder.h>

static LYCStoreValue *center = nil;

@implementation LYCStoreValue

+ (instancetype)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        center = (LYCStoreValue *)@"LYCStoreValue";
        center = [[LYCStoreValue alloc] init];
    });
    
    //防止子类使用
    NSString *classString = NSStringFromClass([self class]);
    if (![classString isEqualToString:@"LYCStoreValue"]) {
        NSParameterAssert(nil);
    }
    
    
    
    return center;
}

- (instancetype)init {
    
    NSString *string = (NSString *)center;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:@"LYCStoreValue"]) {
        
        self = [super init];
        if (self) {
            
            //防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if (![classString isEqualToString:@"LYCStoreValue"]) {
                NSParameterAssert(nil);
            }
        }
        return self;
    }
    else {
        return nil;
    }
}


/**
 存储数据

 @param value 存储的数据
 @param key 存储key
 */
- (void)storeValue:(id)value withKey:(NSString *)key {
    
    NSParameterAssert(key);
    NSParameterAssert(value);
    
    NSData *data = [FastCoder dataWithRootObject:value];
    if (data) {
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}

/**
 读取数据

 @param key 读取key
 @return 读取的数据
 */
- (id)valueWithKey:(NSString *)key {
    
    NSParameterAssert(key);
    
    NSData *data = [[NSUserDefaults standardUserDefaults] valueForKey:key];
    return [FastCoder objectWithData:data];
}

@end
