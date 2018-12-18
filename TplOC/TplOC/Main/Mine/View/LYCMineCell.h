//
//  LYCMineCell.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class LYCMineModel;
@interface LYCMineCell : UITableViewCell

@property (nonatomic, strong) LYCMineModel *cellData;//!< cell的数据model实例

@end

NS_ASSUME_NONNULL_END
