//
//  WQBaseViewController.m
//  LeancloudDemo
//
//  Created by LAnqxpp on 2019/5/29.
//  Copyright © 2019 Robinson. All rights reserved.
//

#import "WQBaseViewController.h"

@interface WQBaseViewController ()
@property (nonatomic ,strong)UIButton *navRightBtn;
@end

@implementation WQBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self navRightBarUI];
    // Do any additional setup after loading the view.
}

- (void)navRightBarUI
{
    self.navRightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.navRightBtn.frame  = CGRectMake(0, 0, 24, 24);
    [self.navRightBtn addTarget:self action:@selector(NavRightAction) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:self.navRightBtn];
    
}
- (void)NavRightAction
{
}

- (void)setNavRightImg:(NSString *)navRightImg {
    
    _navRightImg = navRightImg;
    [self.navRightBtn setImage:[UIImage imageNamed:_navRightImg] forState:UIControlStateNormal];
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
