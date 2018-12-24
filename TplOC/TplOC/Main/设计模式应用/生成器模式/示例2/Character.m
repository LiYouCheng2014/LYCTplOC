//
//  Character.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _protection = 1.0;
        _power = 1.0;
        _strength = 1.0;
        _stamina = 1.0;
        _intelligence = 1.0;
        _agility = 1.0;
        _aggressiveness = 1.0;
    }
    return self;
}

@end
