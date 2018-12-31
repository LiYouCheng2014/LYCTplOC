//
//  LYCSubscriptionServiceCenter.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LYCSubscriptionServiceCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYCSubscriptionServiceCenter : NSObject

/**
 创建订阅号
 
 @param subscriptionNumber 订阅号
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 移除订阅号
 
 @param subscriptionNumber 订阅号
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;


/**
 添加客户到具体的订阅号
 
 @param customer 客户
 @param subscriptionNumber 订阅号
 */
+ (void)addCustomer:(id <LYCSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;


/**
 移除客户到具体的订阅号
 
 @param customer 客户
 @param subscriptionNumber 订阅号
 */
+ (void)removeCustomer:(id <LYCSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;


/**
 发送消息到具体的订阅号
 
 @param message 消息
 @param subscriptionNumber 订阅号
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;


@end

NS_ASSUME_NONNULL_END
