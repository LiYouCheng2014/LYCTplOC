//
//  LYCMineModel.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, LYCMineDataType) {
    LYCMineDataTypeDefault, //!< 默认类型
    LYCMineDataTypeOne, //!< 类型1
    LYCMineDataTypeTwo, //!< 类型2
};

@interface LYCMineModel : NSObject

@property (nonatomic, copy) NSString *title;//!< 标题文本
@property (nonatomic, copy) NSString *detail;//!< 细节文本

@property (nonatomic, assign) LYCMineDataType type;//!< 数据类型

/**
 LYCMineModel初始化方法

 @param dic 初始化数据源字典
 @return LYCMineModel实例
 */
- (instancetype)initWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
