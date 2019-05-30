//
//  MSXMyViewController.m
//  LeancloudDemo
//
//  Created by mac on 2019/3/22.
//  Copyright © 2019年 Robinson. All rights reserved.
//

#import "MSXMyViewController.h"
#import "MSXLoginViewController.h"
#import "MyInfoListTableViewCell.h"
#import "MSXUserInfoViewController.h"

#define MyInfoListTableViewCellID @"MyInfoListTableViewCellID"
@interface MSXMyViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic ,strong)UITableView *tableView;

@property (nonatomic ,strong)NSArray *infoTitleArray;
@property (nonatomic ,strong)NSArray *infoImgArray;

@end

@implementation MSXMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addUI];
    [self requestData];
    
    
    
    // Do any additional setup after loading the view.
}



- (void)addUI
{
 
    self.navRightImg = @"kefu";
    
    self.tableView.tableHeaderView = [self headerTabView];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MyInfoListTableViewCell" bundle:nil] forCellReuseIdentifier:MyInfoListTableViewCellID];
    
    [self.view addSubview:self.tableView];
    
}
- (void)NavRightAction {
    
}

- (void)requestData
{
    self.infoTitleArray = @[@"订单",@"收藏",@"关于我们",@"清除缓存",@"设置"];
    self.infoImgArray = @[@"dingdan",@"shoucang",@"guanyuwomen",@"qingchuhuancun",@"shezhi"];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MSXLoginViewController *vc = [[MSXLoginViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
   
}



#pragma mark --- table ---

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.infoImgArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyInfoListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyInfoListTableViewCellID forIndexPath:indexPath];
    cell.leftImg.image = [UIImage imageNamed:self.infoImgArray[indexPath.row]];
    cell.titleLab.text = self.infoTitleArray[indexPath.row];
    return cell;
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [UIAlertController cn_showAlertViewWithTitle:@"温馨提示" message:@"是否退出" customActionTitles:@[@{CNAlertActionStyleDefault :@"OK"}] cancelTitle:@"取消" complete:^(NSUInteger index) {
        
    }];
    
}

- (UIView *)headerTabView
{
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200)];
    headerView.backgroundColor = [UIColor orangeColor];
    
    UIImageView *headerImg = [[UIImageView alloc]init];
    headerImg.userInteractionEnabled = YES;
    headerImg.layer.masksToBounds = YES;
    headerImg.layer.cornerRadius = 50;
    headerImg.backgroundColor = [UIColor redColor];
    [headerView addSubview:headerImg];
    
    [headerImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(headerView.mas_leading).offset(20);
        make.centerY.mas_equalTo(headerView);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    
    UILabel *titleLab = [[UILabel alloc]init];
    titleLab.text = @"猪队友";
    [headerView addSubview:titleLab];
    
    [titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(headerImg.mas_trailing).offset(20);
        make.trailing.mas_equalTo(headerView.mas_trailing).offset(-20);
        make.top.mas_equalTo(headerImg.mas_top);
        
    }];
    
    
    UILabel *contentLab = [[UILabel alloc]init];
    contentLab.numberOfLines = 0;
    contentLab.text = @"简介";
    [headerView addSubview:contentLab];
    
    [contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(headerImg.mas_trailing).offset(20);
        make.trailing.mas_equalTo(headerView.mas_trailing).offset(-20);
        make.top.mas_equalTo(titleLab.mas_bottom).offset(10);
        
    }];
    
    [headerView addTapBlock:^(id  _Nonnull obj) {
        MSXUserInfoViewController *vc = [[MSXUserInfoViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }];
    
    [headerImg addTapBlock:^(id  _Nonnull obj) {
        NSLog(@"我是图片");
    }];
    
  
    
    return headerView;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headSection = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 0)];
    headSection.backgroundColor = [UIColor red:244 green:244 blue:244 alpha:1];
    return headSection;
    
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREENH_HEIGHT) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 50;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
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
