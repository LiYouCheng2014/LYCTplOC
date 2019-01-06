//
//  Stroke.h
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stroke : NSObject<Mark, NSCopying>
{
    UIColor *color_;
    CGFloat size_;
    NSMutableArray *children_;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint aLocation;
@property (nonatomic, assign) NSUInteger count; // 子节点的个数
@property (nonatomic, strong) id <Mark> lastChild;

- (id)initWithLocation:(CGPoint)location;
- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
