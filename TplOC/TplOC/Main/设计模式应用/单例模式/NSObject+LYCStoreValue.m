//
//  NSObject+LYCStoreValue.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/24.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "NSObject+LYCStoreValue.h"

#import "LYCStoreValue.h"

@implementation NSObject (LYCStoreValue)

- (void)storeValueWithKey:(NSString *)key {
    
    [[LYCStoreValue shareInstance] storeValue:self withKey:key];
}

+ (id)valueWithKey:(NSString *)key {
    
    return [[LYCStoreValue shareInstance] valueWithKey:key];
}

@end
