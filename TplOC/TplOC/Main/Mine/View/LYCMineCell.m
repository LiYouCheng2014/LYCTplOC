//
//  LYCMineCell.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCMineCell.h"

#import "LYCMineModel.h"

@interface LYCMineCell()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *detailLabel;

@end

@implementation LYCMineCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self.contentView addSubview:self.iconImageView];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.detailLabel];
        
        [self setupIconImageViewConstraint];
        [self setupTitleLabelConstraint];
        [self setupDetailLabelConstraint];
    }
    
    return self;
}

- (void)setupIconImageViewConstraint {
    [_iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(15);
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.width.equalTo(@35);
        make.height.equalTo(@35);
    }];
}

- (void)setupTitleLabelConstraint {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView.mas_right).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-15);
        make.top.equalTo(self.contentView.mas_top).offset(15);
        make.height.equalTo(@20);
    }];
}

- (void)setupDetailLabelConstraint {
    [_detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_left);
        make.right.equalTo(self.titleLabel.mas_right);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(10);
        make.height.equalTo(@20);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-15);
    }];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
}

-(void)setCellData:(LYCMineModel *)cellData {
    
    _cellData = cellData;
    
    _iconImageView.image = [UIImage imageNamed:@"icon"];
    _titleLabel.text = cellData.title;
    _detailLabel.text = cellData.detail;
}

- (UIImageView *)iconImageView {
    
    if (!_iconImageView) {
        
        _iconImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    
    return _iconImageView;
}

- (UILabel *)titleLabel {
    
    if (!_titleLabel) {
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.font = [UIFont systemFontOfSize:16.0];
        _titleLabel.textColor = [UIColor blackColor];
    }
    
    return _titleLabel;
}

- (UILabel *)detailLabel {
    
    if (!_detailLabel) {
        
        _detailLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _detailLabel.font = [UIFont systemFontOfSize:14.0];
        _detailLabel.textColor = [UIColor grayColor];
    }
    
    return _detailLabel;
}

@end
