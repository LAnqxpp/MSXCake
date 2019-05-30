//
//  WQNavViewController.m
//  LeancloudDemo
//
//  Created by LAnqxpp on 2019/5/30.
//  Copyright © 2019 Robinson. All rights reserved.
//

#import "WQNavViewController.h"

@interface WQNavViewController ()<UIGestureRecognizerDelegate>

@end

@implementation WQNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)pushViewController:(UIViewController *)vc animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) { // 非根控制器
        
        self.interactivePopGestureRecognizer.delegate = self;
        // 设置返回按钮,只有非根控制器
        vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewControllerAnimated:)];
        vc.hidesBottomBarWhenPushed = YES;
    }
    // 真正在跳转
    [super pushViewController:vc animated:animated];
}
- (void)showViewController:(UIViewController *)vc sender:(id)sender
{
    if (self.childViewControllers.count > 0) { // 非根控制器
        
        self.interactivePopGestureRecognizer.delegate = self;
        // 设置返回按钮,只有非根控制器
        vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewControllerAnimated:)];
        vc.hidesBottomBarWhenPushed = YES;
    }
    // 真正在跳转
    [super showViewController:vc sender:sender];
}
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if (self.childViewControllers.count == 1) {
        // 表示用户在根控制器界面，就不需要触发滑动手势，
        return NO;
    }
    return YES;
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
