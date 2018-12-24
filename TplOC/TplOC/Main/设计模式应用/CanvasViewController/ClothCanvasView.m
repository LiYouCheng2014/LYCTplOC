//
//  ClothCanvasView.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/16.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 在上面添加一个纸图像视图作为画布背景
        UIImage *backgroundImage = [UIImage imageNamed:@"cloth"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    return self;
}

// 其他行为的实现

@end
