//
//  StandardCharacterBuilder.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "CharacterBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface StandardCharacterBuilder : CharacterBuilder

- (CharacterBuilder *)buildStrength:(CGFloat)value;
- (CharacterBuilder *)buildStamina:(CGFloat)value;
- (CharacterBuilder *)buildIntelligence:(CGFloat)value;
- (CharacterBuilder *)buildAgility:(CGFloat)value;
- (CharacterBuilder *)buildAggressiveness:(CGFloat)value;

@end

NS_ASSUME_NONNULL_END
