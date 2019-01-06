//
//  Dot.m
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import "Dot.h"

@implementation Dot


#pragma mark - NSCopying Method

- (id)copyWithZone:(nullable NSZone *)zone {
    
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    
    // 复制color
    [dotCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    // 复制size
    [dotCopy setSize:size_];
    
    
    return dotCopy;
}

@end
