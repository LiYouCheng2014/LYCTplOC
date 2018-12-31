//
//  LYCAlphaInputValidator.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYCAlphaInputValidator : LYCInputValidator

/**
 保证输入只包含字母
 */
- (BOOL)validateInput:(UITextField *)input;

@end

NS_ASSUME_NONNULL_END
