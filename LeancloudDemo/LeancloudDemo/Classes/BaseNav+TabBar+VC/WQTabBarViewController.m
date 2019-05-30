//
//  WQTabBarViewController.m
//  LeancloudDemo
//
//  Created by LAnqxpp on 2019/5/29.
//  Copyright © 2019 Robinson. All rights reserved.
//

#import "WQTabBarViewController.h"
#import "WQNavViewController.h"
#import "MSXMainViewController.h"
#import "MSXTaskStatusViewController.h"
#import "MSXStoryViewController.h"
#import "MSXMyViewController.h"
#import "MSXProductionViewController.h"
@interface WQTabBarViewController ()

@end

@implementation WQTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabbarController];
    // Do any additional setup after loading the view.
}

- (void)setupTabbarController {
    
    
    MSXMainViewController *first        =    [MSXMainViewController new];
    
    MSXStoryViewController *second    =    [MSXStoryViewController new];
    MSXProductionViewController *third        =    [MSXProductionViewController new];
    MSXTaskStatusViewController *fourth    =    [MSXTaskStatusViewController new];
    MSXMyViewController *five    =    [MSXMyViewController new];
    
    [self setupChildVc:first title:@"蛋糕" image:@"dangao-N" selectedImage:@"dangao-S"];
      [self setupChildVc:second title:@"故事" image:@"3lishi-N" selectedImage:@"3lishi-S"];
      [self setupChildVc:third title:@"发布" image:@"fabu-N" selectedImage:@"fabu-S"];
      [self setupChildVc:fourth title:@"进度" image:@"jindu-N" selectedImage:@"jindu-S"];
      [self setupChildVc:five title:@"我" image:@"wo-N" selectedImage:@"wo-S"];
    
    
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    WQNavViewController * nav = [[WQNavViewController alloc]initWithRootViewController:vc];
    
    //  设置文字和图片
    vc.tabBarItem.title = title;
    if (image.length) { // 图片名有具体值
        vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:[UIColor colorWithHexString:@"#1296db"] forKey:NSForegroundColorAttributeName];
    [vc.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];
    

    [self addChildViewController:nav];
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
