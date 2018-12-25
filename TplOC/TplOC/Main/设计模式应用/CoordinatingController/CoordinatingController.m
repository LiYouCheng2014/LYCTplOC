//
//  CoordinatingController.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "CoordinatingController.h"

#import "CanvasViewController.h"

static CoordinatingController *center = nil;

@implementation CoordinatingController

+ (instancetype)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        center = (CoordinatingController *)@"CoordinatingController";
        center = [[CoordinatingController alloc] init];
    });
    
    //防止子类使用
    NSString *classString = NSStringFromClass([self class]);
    if (![classString isEqualToString:@"CoordinatingController"]) {
        NSParameterAssert(nil);
    }
    
    return center;
}

- (instancetype)init {
    
    NSString *string = (NSString *)center;
    if ([string isKindOfClass:[NSString class]] && [string isEqualToString:@"CoordinatingController"]) {
        
        self = [super init];
        if (self) {
            
            //防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if (![classString isEqualToString:@"CoordinatingController"]) {
                NSParameterAssert(nil);
            }
        }
        return self;
    }
    else {
        return nil;
    }
}

- (CanvasViewController *)canvasViewController {
    return [[CanvasViewController alloc] init];
}

@end
