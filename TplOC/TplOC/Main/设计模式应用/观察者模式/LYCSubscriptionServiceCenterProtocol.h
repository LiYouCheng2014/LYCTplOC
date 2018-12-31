//
//  LYCSubscriptionServiceCenterProtocol.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LYCSubscriptionServiceCenterProtocol <NSObject>

@required
- (void)subscriptionMeesage:(id)message withSubscriptionNumber:(NSString *)subscriptionNumber;

@end

NS_ASSUME_NONNULL_END
