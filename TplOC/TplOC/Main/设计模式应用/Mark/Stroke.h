//
//  Stroke.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stroke : NSObject <Mark, NSCopying>
{
@private
    UIColor *color_;
    CGFloat size_;
    NSMutableArray *children_;
}
@property (nonatomic, strong) UIColor *color; //!< 颜色
@property (nonatomic, assign) CGFloat size; //!< 大小
@property (nonatomic, assign) CGPoint location; //!< 位置
@property (nonatomic, assign, readonly) NSUInteger count; //!< 子节点的个数
@property (nonatomic, strong, readonly) id <Mark> lastChild; //!< 子节点

- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
