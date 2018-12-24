//
//  Stroke.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = color_, size = size_;
@dynamic location;

- (instancetype)init
{
    self = [super init];
    if (self) {
        children_ = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)location
{
    // 不做任何位置改变
}

- (CGPoint)location
{
    if ([children_ count] > 0) {
        return [(Stroke *)[children_ objectAtIndex:0] location];
    }
    
    return CGPointZero;
}

- (void)addMark:(id <Mark>)mark
{
    [children_ addObject:mark];
}

- (void)removeMark:(id <Mark>)mark
{
    // 如果marka在这一层，将其移除并返回
    //否则，让每个子节点去找它
    if ([children_ containsObject:mark]) {
        [children_ removeObject:mark];
    }
    else {
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index
{
    if (index >= [children_ count]) {
        return nil;
    }
    
    return [children_ objectAtIndex:index];
}

- (id<Mark>)lastChild {
    return [children_ lastObject];
}

- (NSUInteger)count {
    return [children_ count];
}

- (id)copyWithZone:(NSZone *)zone
{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    
    // 复制color
    [strokeCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    // 复制size
    [strokeCopy setSize:size_];
    
    // 复制children
    
    for (id <Mark> child in children_) {
        id <Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    
    return strokeCopy;
}

@end
