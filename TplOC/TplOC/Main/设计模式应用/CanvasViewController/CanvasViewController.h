//
//  CanvasViewController.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CanvasView.h"
#import "CanvasViewGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasViewController : UIViewController
{
    @private
    CanvasView *canvasView;//画布视图
}

@property (nonatomic, weak) CanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end

NS_ASSUME_NONNULL_END
