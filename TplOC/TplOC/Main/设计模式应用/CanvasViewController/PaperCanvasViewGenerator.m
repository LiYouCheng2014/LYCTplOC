//
//  PaperCanvasViewGenerator.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/16.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame
{
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
