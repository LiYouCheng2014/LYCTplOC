//
//  LYCAbstractFactoryTestVC.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCAbstractFactoryTestVC.h"

#import "BrandingFactory.h"

@interface LYCAbstractFactoryTestVC ()

@end

@implementation LYCAbstractFactoryTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     抽象工厂测试
     */
}

- (void)loadView {
    
    BrandingFactory *factory= [BrandingFactory factory];
    UIView *view = [factory brandedView];
    [self.view addSubview:view];
    
    UIButton *button = [factory brandedMainButton];
    [self.view addSubview:button];
    
    UIToolbar *toolbar = [factory brandedToolBar];
    [self.view addSubview:toolbar];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
