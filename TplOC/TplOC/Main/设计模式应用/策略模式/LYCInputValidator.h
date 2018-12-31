//
//  LYCInputValidator.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYCInputValidator : NSObject

- (BOOL)validateInput:(UITextField *)input;


/**
 当validateInput为NO的时候，读取错误信息
 */
@property (nonatomic, strong) NSString *errorMessage;

@end

NS_ASSUME_NONNULL_END
