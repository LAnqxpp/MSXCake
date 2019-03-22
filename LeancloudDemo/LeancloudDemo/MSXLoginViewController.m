//
//  MSXLoginViewController.m
//  LeancloudDemo
//
//  Created by mac on 2019/3/22.
//  Copyright © 2019年 Robinson. All rights reserved.
//

#import "MSXLoginViewController.h"

@interface MSXLoginViewController ()

@end

@implementation MSXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [EBForeNotification handleRemoteNotification:@{@"aps":@{@"alert":@"皮卡丘: Hi 小智，一起去冒险吧!"}} soundID:1312 isIos10:NO];
    // Do any additional setup after loading the view.
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
