//
//  AcmeBrandingFactory.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "AcmeBrandingFactory.h"

#import "AcmeView.h"
#import "AcmeMainButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedMainButton {
    
    return [[AcmeMainButton alloc] init];
}

- (UIToolbar *)brandedToolBar {
    
    return [[AcmeToolbar alloc] init];
}

@end
