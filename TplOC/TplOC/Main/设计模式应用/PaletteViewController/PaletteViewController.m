//
//  PaletteViewController.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "PaletteViewController.h"

#import "SetStrokeColorCommand.h"

#import "CommandSlider.h"

@interface PaletteViewController ()
<SetStrokeColorCommandDelegate>

@property (nonatomic, strong) UISlider *redSlider; //!<
@property (nonatomic, strong) UISlider *greeSlider; //!<
@property (nonatomic, strong) UISlider *blueSlider; //!<

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SetStrokeColorCommand *colorCommand = [[SetStrokeColorCommand alloc] init];
    [colorCommand setRgbValuesProvider:^(CGFloat * _Nonnull red, CGFloat * _Nonnull green, CGFloat * _Nonnull blue) {
        *red = (CGFloat)_redSlider.value;
        *green = (CGFloat)_greeSlider.value;
        *blue = (CGFloat)_blueSlider.value;
    }];
}

- (void)onCommandSliderValueChanged:(CommandSlider *)slider {
    
    [[slider command] execute];
}

#pragma mark - SetStrokeColorCommandDelegate

- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue {
    
    *red = (CGFloat)_redSlider.value;
    *green = (CGFloat)_greeSlider.value;
    *blue = (CGFloat)_blueSlider.value;
}

- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color {
    // paletView setBackgroudColor: color]
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
