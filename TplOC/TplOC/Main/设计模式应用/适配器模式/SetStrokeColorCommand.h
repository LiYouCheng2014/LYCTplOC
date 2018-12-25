//
//  SetStrokeColorCommand.h
//  TplOC
//
//  Created by liyoucheng on 2018/12/25.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^RGBValuesProvider)(CGFloat *red, CGFloat *green, CGFloat *blue);

@class SetStrokeColorCommand;

@protocol SetStrokeColorCommandDelegate <NSObject>

- (void)command:(SetStrokeColorCommand *)command
didRequestColorComponentsForRed:(CGFloat *)red
          green:(CGFloat *)green
           blue:(CGFloat *)blue;

- (void)command:(SetStrokeColorCommand *)command
didFinishColorUpdateWithColor:(UIColor *)color;

@end

@interface SetStrokeColorCommand : Command

@property (nonatomic, weak) id <SetStrokeColorCommandDelegate> delegate;

@property (nonatomic, copy) RGBValuesProvider rgbValuesProvider; //!< 

- (void)execute;

@end

NS_ASSUME_NONNULL_END
