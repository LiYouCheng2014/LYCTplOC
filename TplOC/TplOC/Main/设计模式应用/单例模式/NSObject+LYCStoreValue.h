//
//  NSObject+LYCStoreValue.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/24.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LYCStoreValue)

- (void)storeValueWithKey:(NSString *)key;
+ (id)valueWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
