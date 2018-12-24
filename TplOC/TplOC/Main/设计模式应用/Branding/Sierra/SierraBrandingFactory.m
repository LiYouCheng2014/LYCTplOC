//
//  SierraBrandingFactory.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "SierraBrandingFactory.h"

#import "SierraView.h"
#import "SierraMainButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView *)brandedView {
    
    return [[SierraView alloc] init];
}

- (UIButton *)brandedMainButton {
    
    return [[SierraMainButton alloc] init];
}

- (UIToolbar *)brandedToolBar {
    
    return [[SierraToolbar alloc] init];
}

@end
