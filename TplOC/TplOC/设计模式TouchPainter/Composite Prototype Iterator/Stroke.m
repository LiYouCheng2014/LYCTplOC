//
//  Stroke.m
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        children_ = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setALocation:(CGPoint)aLocation {
    
}

- (CGPoint)aLocation {
    
    // 返回第1个子节点的位置
    if ([children_ count] > 0) {
        
        return [[children_ firstObject] aLocation];
    }
    
    // 否则，返回原点
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    
    [children_ addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    
    // 如果mark在这一层，并将其移除并返回
    // 否则，让每个子节点去找它
    if ([children_ containsObject:mark]) {
        
        [children_ removeObject:mark];
    }
    else {
        
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    
    if (index >= [children_ count]) {
        
        return nil;
    }
    
    return children_[index];
}

// 返回最后子节点
- (id<Mark>)lastChild {
    
    return [children_ lastObject];
}

// 返回子节点数
- (NSUInteger)count {
    
    return [children_ count];
}


#pragma mark - NSCopying Method

- (id)copyWithZone:(nullable NSZone *)zone {
    
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
