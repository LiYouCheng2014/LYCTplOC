//
//  BrandingFactory.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BrandingFactory : NSObject

+ (BrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolBar;

@end

NS_ASSUME_NONNULL_END
