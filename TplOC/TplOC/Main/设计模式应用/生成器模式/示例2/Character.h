//
//  Character.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject

@property (nonatomic, assign) CGFloat protection; //!< 保护
@property (nonatomic, assign) CGFloat power; //!< 攻击
@property (nonatomic, assign) CGFloat strength; //!< 力量
@property (nonatomic, assign) CGFloat stamina; //!< 耐力
@property (nonatomic, assign) CGFloat intelligence; //!< 智力
@property (nonatomic, assign) CGFloat agility; //!< 敏捷
@property (nonatomic, assign) CGFloat aggressiveness; //!< 攻击力

@end

NS_ASSUME_NONNULL_END
