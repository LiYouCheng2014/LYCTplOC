//
//  CommandSlider.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/25.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommandSlider : UISlider

@property (nonatomic, strong) Command *command; //!< 命令

@end

NS_ASSUME_NONNULL_END
