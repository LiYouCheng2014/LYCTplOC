//
//  ChasingGame.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StandardCharacterBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChasingGame : NSObject

- (Character *)createPlayer:(CharacterBuilder *)builder;
- (Character *)createEnemy:(CharacterBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
