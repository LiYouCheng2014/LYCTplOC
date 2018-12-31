//
//  LYCNumericInputValidator.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYCNumericInputValidator : LYCInputValidator

/**
 保证输入只包含数字（0-9）的验证方法
 */
- (BOOL)validateInput:(UITextField *)input;

@end

NS_ASSUME_NONNULL_END
