//
//  StandardCharacterBuilder.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(CGFloat)value {
    
    // 更新角色的防御力
    self.character.protection *= value;
    
    // 更新角色的攻击值
    self.character.power *= value;
    
    // 最后设定力量值并返回此生成器
    return [super buildStrength:value];
}

- (CharacterBuilder *)buildStamina:(CGFloat)value {
    
    // 更新角色的防御力
    self.character.protection *= value;
    
    // 更新角色的攻击值
    self.character.power *= value;
    
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(CGFloat)value {
    
    // 更新角色的防御力
    self.character.protection *= value;
    
    // 更新角色的攻击值
    self.character.power *= value;
    
    return [super buildIntelligence:value];
}

- (CharacterBuilder *)buildAgility:(CGFloat)value {
    
    // 更新角色的防御力
    self.character.protection *= value;
    
    // 更新角色的攻击值
    self.character.power *= value;
    
    return [super buildAgility:value];
}

- (CharacterBuilder *)buildAggressiveness:(CGFloat)value {
    
    // 更新角色的防御力
    self.character.protection *= value;
    
    // 更新角色的攻击值
    self.character.power *= value;
    
    return [super buildAggressiveness:value];
}

@end
