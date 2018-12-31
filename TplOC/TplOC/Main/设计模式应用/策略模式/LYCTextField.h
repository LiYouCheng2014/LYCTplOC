//
//  LYCTextField.h
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/9.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LYCInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LYCTextField : UITextField

@property (nonatomic, strong) LYCInputValidator *inputeValidator;

- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
