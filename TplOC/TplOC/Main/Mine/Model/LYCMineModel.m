//
//  LYCMineModel.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCMineModel.h"

@implementation LYCMineModel

- (instancetype)initWithDic:(NSDictionary *)dic {
    
    self = [super init];
    
    if (self) {
        
        _title = dic[@"title"];
        _detail = dic[@"detail"];
    }
    
    return self;
}

@end
