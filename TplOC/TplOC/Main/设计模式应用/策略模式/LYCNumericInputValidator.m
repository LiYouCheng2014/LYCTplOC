//
//  LYCNumericInputValidator.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCNumericInputValidator.h"

@implementation LYCNumericInputValidator

- (BOOL)validateInput:(UITextField *)input {
    
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text] options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    
    //如果没有匹配就返回错误信息
    if (numberOfMatches == 0) {
        self.errorMessage = NSLocalizedString(@"只能包含数字", @"");
        return NO;
    }
    
    self.errorMessage = @"";
    
    return YES;
}

@end
