//
//  LYCStrategyVC.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCStrategyVC.h"

#import "LYCTextField.h"

#import "LYCNumericInputValidator.h"
#import "LYCAlphaInputValidator.h"

@interface LYCStrategyVC ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet LYCTextField *numericTextField;
@property (weak, nonatomic) IBOutlet LYCTextField *alphaTextField;

@end

@implementation LYCStrategyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numericTextField.delegate = self;
    self.numericTextField.inputeValidator = [LYCNumericInputValidator new];
    
    self.alphaTextField.delegate = self;
    self.alphaTextField.inputeValidator = [LYCAlphaInputValidator new];
    
    
}

#pragma mark - UITextFieldDelegate

-(void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[LYCTextField class]]) {
        LYCTextField *textF = (LYCTextField*)textField;
        [textF validate];
    }
}

@end
