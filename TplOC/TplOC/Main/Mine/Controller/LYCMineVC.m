//
//  LYCMineVC.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/18.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCMineVC.h"

#import "LYCMineModel.h"
#import "LYCMineCell.h"

static NSString *kIdentifierCell = @"LYCMineCell";

@interface LYCMineVC ()
<UITableViewDataSource,
UITableViewDelegate>

@property (nonatomic, strong) UIView *headView; //!< 顶部
@property (nonatomic, strong) UITableView *tableView; //!< 列表
@property (nonatomic, strong) UIView *tableFootView; //!< 尾

@property (nonatomic, copy) NSArray<LYCMineModel *> *cellDatas; //!< 数据源

@end

@implementation LYCMineVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.view addSubview:self.headView];
    [self.view addSubview:self.tableView];
    
    [self setupHeadViewConstraint];
    [self setupTableViewConstraint];
    
    [self getCellDatas];
}


#pragma mark - Private Functions

- (void)setupHeadViewConstraint {
    
    [_headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(self.view.mas_width);
        make.height.equalTo(@60);
    }];
}

- (void)setupTableViewConstraint {
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.equalTo(self.view);
    }];
}


#pragma mark - Action functions

- (void)logoutButtonClicked:(id)sender {
    
    NSLog(@"点击按钮");
}


#pragma mark - Request functions

- (NSArray *)getCellDatas {//这里模仿网络请求成功
    
    LYCMineModel *data = [[LYCMineModel alloc] initWithDic:@{@"title": @"我是一个标题", @"detail": @"我是一个详情!"}];
    
    NSMutableArray<LYCMineModel *> *datas = [NSMutableArray array];
    for (int i = 0;  i < 20 ; i++) {
        [datas addObject:data];
    }
    
    _cellDatas = datas;
    
    return _cellDatas;
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _cellDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LYCMineCell *cell = [tableView dequeueReusableCellWithIdentifier:kIdentifierCell forIndexPath:indexPath];
    cell.cellData = _cellDatas[indexPath.row];
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 50.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"您点击了%ld个cell",(long)indexPath.row);
}


#pragma mark - lazy

- (UIView *)headView {
    
    if (!_headView) {
        
        _headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
        _headView.backgroundColor = [UIColor grayColor];
    }
    
    return _headView;
}

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin;
        _tableView.estimatedSectionHeaderHeight = .0;
        _tableView.estimatedSectionFooterHeight = .0;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.tableFooterView = self.tableFootView;
        [_tableView registerClass:[LYCMineCell class] forCellReuseIdentifier:kIdentifierCell];
    }
    
    return _tableView;
}

- (UIView *)tableFootView {
    
    if (!_tableFootView) {
        
        _tableFootView = [[UIView alloc] initWithFrame:CGRectMake(.0, .0, self.view.frame.size.width, 150.0)];
        
        CGFloat horMargin = 50.0;
        UIButton *logoutButton = [UIButton buttonWithType:UIButtonTypeCustom];
        logoutButton.frame = CGRectMake(.0, .0, _tableFootView.frame.size.width - horMargin * 2, 50.0);
        logoutButton.center = _tableFootView.center;
        [logoutButton setTitle:@"这是一个Button" forState:UIControlStateNormal];
        [logoutButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [logoutButton addTarget:self action:@selector(logoutButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        logoutButton.layer.borderColor = [UIColor purpleColor].CGColor;
        logoutButton.layer.cornerRadius = logoutButton.frame.size.height / 2;
        logoutButton.layer.borderWidth = 1.0;
        logoutButton.layer.masksToBounds = YES;
        [_tableFootView addSubview:logoutButton];
    }
    
    return _tableFootView;
}

@end
