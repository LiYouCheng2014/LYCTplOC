//
//  UIView+UIImage.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/31.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "UIView+UIImage.h"

#import <QuartzCore/QuartzCore.h>

@implementation UIView (UIImage)

- (UIImage *)image {
    
    CGSize imageSize = [self bounds].size;
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        
        if ([window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen]) {
            // -renderInContext:在层的坐标空间中呈现，
            //因此，我们必须首先将层的几何形状应用到图形上下文
            CGContextSaveGState(context);
            //以窗口的锚点为中心设置上下文
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            //应用窗口关于锚点的变换
            CGContextConcatCTM(context, [window transform]);
            //由锚点左上界的部分偏移
            CGContextTranslateCTM(context, -[window bounds].size.width * [[window layer] anchorPoint].x, -[window bounds].size.height * [[window layer] anchorPoint].y);
            //将层层次结构呈现到当前上下文
            [[window layer] renderInContext:context];
            //恢复上下文
            CGContextRestoreGState(context);
        }
    }
    
    //获取截图图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
