//
//  Vertex.m
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (instancetype)initWithLocation:(CGPoint)location {
    
    self = [super init];
    if (self) {
        
        [self setALocation:location];
    }
    return self;
}

- (void)setColor:(UIColor *)color {
    
}

- (UIColor *)color {
    
    return nil;
}

- (void)setSize:(CGFloat)size {
    
}

- (CGFloat)size {
    
    return 0.0;
}

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index {
    
    return nil;
}

- (id<Mark>)lastChild {
    
    return nil;
}

- (NSUInteger)count {
    
    return 0;
}

- (NSEnumerator *)enumerator {
    
    return nil;
}


#pragma mark - NSCopying Method

- (id)copyWithZone:(nullable NSZone *)zone {
    
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    return vertexCopy;
}

@end
