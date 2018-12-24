//
//  LYCBuiderTestVC.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/23.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCBuiderTestVC.h"

#import "ChasingGame.h"

@interface LYCBuiderTestVC ()

@end

@implementation LYCBuiderTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
    
    ChasingGame *game = [[ChasingGame alloc] init];
    
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
