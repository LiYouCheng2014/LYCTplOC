//
//  CanvasViewController.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

@synthesize canvasView = canvasView_;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 使用CanvasViewGenerator的工厂方法取得默认画布视图
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [canvasView removeFromSuperview];
    
    CGRect aFrame = CGRectMake(0, 0, 320, 436);
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    [self setCanvasView:aCanvasView];
    [[self view] addSubview:canvasView_];
}

- (void)setStrokerColor:(UIColor *)strokerColor {
    
}

@end
