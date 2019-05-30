//
//  WQBaseViewController.h
//  LeancloudDemo
//
//  Created by LAnqxpp on 2019/5/29.
//  Copyright © 2019 Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WQBaseViewController : UIViewController
//设置导航栏邮编按钮
@property (nonatomic ,strong)NSString *navRightImg;

- (void)NavRightAction;
@end

NS_ASSUME_NONNULL_END
