//
//  MSXLoginViewController.m
//  LeancloudDemo
//
//  Created by mac on 2019/3/22.
//  Copyright © 2019年 Robinson. All rights reserved.
//

#import "MSXLoginViewController.h"
#import "RJTextField.h"
@interface MSXLoginViewController ()

@end

@implementation MSXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    RJTextField * account = [[RJTextField alloc]initWithFrame:CGRectMake(0, 60, SCREEN_WIDTH, 60)];
    account.placeholder = @"请输入手机号";
    account.maxLength = 11;
    account.errorStr = @"超出字数限制";
    account.leftIconName = @"loginPhone";
    account.textField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:account];
    
    RJTextField * password = [[RJTextField alloc]initWithFrame:CGRectMake(0, 120, SCREEN_WIDTH, 60)];
    password.placeholder = @"请输入密码";
    password.maxLength = 16;
    password.errorStr = @"超出字数限制";
    password.leftIconName = @"Key";
    password.textField.keyboardType = UIKeyboardTypeASCIICapable;
    password.textField.secureTextEntry = YES;
    [self.view addSubview:password];
    
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
