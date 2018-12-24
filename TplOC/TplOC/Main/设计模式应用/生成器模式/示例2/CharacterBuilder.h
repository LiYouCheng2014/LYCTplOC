//
//  CharacterBuilder.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Character.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharacterBuilder : NSObject

@property (nonatomic, strong) Character *character; //!< 特征

- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(CGFloat)value;
- (CharacterBuilder *)buildStamina:(CGFloat)value;
- (CharacterBuilder *)buildIntelligence:(CGFloat)value;
- (CharacterBuilder *)buildAgility:(CGFloat)value;
- (CharacterBuilder *)buildAggressiveness:(CGFloat)value;

@end

NS_ASSUME_NONNULL_END
