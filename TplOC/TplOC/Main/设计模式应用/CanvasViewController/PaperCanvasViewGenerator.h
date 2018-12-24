//
//  PaperCanvasViewGenerator.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/16.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "CanvasViewGenerator.h"

#import "PaperCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaperCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end

NS_ASSUME_NONNULL_END
