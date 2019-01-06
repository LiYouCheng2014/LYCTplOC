//
//  NSMutableArray+Stack.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/31.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

- (void)push:(id)object {
    
    if (object != nil) {
        
        [self addObject:object];
    }
}

- (id)pop {
    
    if ([self count] == 0) {
        return nil;
    }
    
    id object = [self lastObject];
    [self removeLastObject];
    
    return object;
}

- (void)dropBottom {
    
    if ([self count] == 0) {
        
        return;
    }
    
    [self removeObjectAtIndex:0];
}

@end
