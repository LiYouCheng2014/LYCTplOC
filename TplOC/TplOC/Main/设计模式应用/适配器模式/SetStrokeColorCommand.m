//
//  SetStrokeColorCommand.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/25.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "SetStrokeColorCommand.h"

#import "CoordinatingController.h"
#import "CanvasViewController.h"

@implementation SetStrokeColorCommand

- (void)execute {
    
    CGFloat redValue = 0.0;
    CGFloat greenValue = 0.0;
    CGFloat blueValue = 0.0;
    
//    // 从委托取得RGB的值
//    [_delegate command:self didRequestColorComponentsForRed:&redValue green:&greenValue blue:&blueValue];
//
//    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
//
//    CoordinatingController *coordinator = [CoordinatingController shareInstance];
//    CanvasViewController *controller = [coordinator canvasViewController];
//    [controller setStrokerColor:color];
//
//    // 转发更新成功消息
//    [_delegate command:self didFinishColorUpdateWithColor:color];
    
    if (_rgbValuesProvider != nil ) {
        
        _rgbValuesProvider(&redValue, &greenValue, &blueValue);
    }
    
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    CoordinatingController *coordinator = [CoordinatingController shareInstance];
    CanvasViewController *controller = [coordinator canvasViewController];
    [controller setStrokerColor:color];
}

@end
