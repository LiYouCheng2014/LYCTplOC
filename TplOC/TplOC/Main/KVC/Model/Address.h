//
//  Address.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/27.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Address : NSObject

@property (nonatomic, copy) NSString *city; //!< 城市
@property (nonatomic, copy) NSString *street; //!< 街道

@property (nonatomic, strong) NSNumber *cityNumber; //!< 城市编号
@property (nonatomic, assign) NSInteger streetNumber; //!< 街道编号

@end

NS_ASSUME_NONNULL_END
