//
//  ViewController.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "ViewController.h"

#import "LYCMineVC.h"

#import "LYCKVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        LYCKVC *vc = [[LYCKVC alloc] init];
        [self presentViewController:vc animated:true completion:nil];
    });
}


@end
