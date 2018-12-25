//
//  JZYIBusinessCardAdapterProtocol.h
//  JZYIObjectiveCManagement
//
//  Created by LiYouCheng on 2018/3/22.
//  Copyright © 2018年 KAISA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@protocol JZYIBusinessCardAdapterProtocol <NSObject>

- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)phoneNumber;

@end
