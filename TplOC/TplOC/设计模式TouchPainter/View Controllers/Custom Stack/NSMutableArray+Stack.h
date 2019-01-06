//
//  NSMutableArray+Stack.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/31.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (Stack)

- (void)push:(id)object;
- (id)pop;
- (void)dropBottom;

@end

NS_ASSUME_NONNULL_END
