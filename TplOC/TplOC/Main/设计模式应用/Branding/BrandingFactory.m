//
//  BrandingFactory.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "BrandingFactory.h"

#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
#if defined (USE_ACME)
    return [[AcmeBrandingFactory alloc] init];
#elif defined (USE_SIERRA)
    return [[SierraBrandingFactory alloc] init];
#else
    return nil;
#endif
}

- (UIView *)brandedView {
    
    return nil;
}

- (UIButton *)brandedMainButton {
    
    return nil;
}

- (UIToolbar *)brandedToolBar {
    
    return nil;
}

@end
