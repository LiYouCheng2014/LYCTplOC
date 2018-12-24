//
//  Dot.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Dot.h"

@implementation Dot

- (id)copyWithZone:(NSZone *)zone
{
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    
    // 复制color
    [dotCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    // 复制size
    [dotCopy setSize:size_];
    
    return dotCopy;
}

@end
