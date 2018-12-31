//
//  LYCTextField.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCTextField.h"

@implementation LYCTextField

- (BOOL)validate {
    BOOL validationResult = [self.inputeValidator validateInput:self];
    
    if (!validationResult) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:self.inputeValidator.errorMessage message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:true completion:nil];
    }
    
    return validationResult;
}

@end
