//
//  Person.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/27.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Address.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name; //!< 名字
@property (nonatomic, assign) NSInteger sex; //!< 性别
@property (nonatomic, strong) NSNumber *age; //!< 年龄
@property (nonatomic, strong) Address *address; //!< 地址

@end

NS_ASSUME_NONNULL_END
