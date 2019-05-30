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
    

    RJTextField * account = [[RJTextField alloc]initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 60)];
    account.placeholder = @"请输入手机号";
    account.maxLength = 11;
    account.errorStr = @"超出字数限制";
    account.leftIconName = @"loginPhone";
    account.textField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:account];
    
    RJTextField * password = [[RJTextField alloc]initWithFrame:CGRectMake(0, 200, SCREEN_WIDTH, 60)];
    password.placeholder = @"请输入密码";
    password.maxLength = 16;
    password.errorStr = @"超出字数限制";
    password.leftIconName = @"Key";
    password.textField.keyboardType = UIKeyboardTypeASCIICapable;
    password.textField.secureTextEntry = YES;
    [self.view addSubview:password];
    
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    loginBtn.backgroundColor = [UIColor blueColor];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginBtn.frame = CGRectMake((SCREEN_WIDTH-200)/2, SCREENH_HEIGHT/2, 200, 55);
    [self.view addSubview:loginBtn];
    [loginBtn addTarget:self action:@selector(loginBtnAction) forControlEvents:UIControlEventTouchUpInside];

    
//    [EBForeNotification handleRemoteNotification:@{@"aps":@{@"alert":@"皮卡丘: Hi 小智，一起去冒险吧!"}} soundID:1312 isIos10:NO];
    // Do any additional setup after loading the view.
}
- (void)loginBtnAction
{
    AVUser *user = [AVUser user];
    user.username = @"";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
