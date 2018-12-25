//
//  CoordinatingController.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CanvasViewController;

@interface CoordinatingController : NSObject

+ (instancetype)shareInstance;

- (CanvasViewController *)canvasViewController;

@end

NS_ASSUME_NONNULL_END
