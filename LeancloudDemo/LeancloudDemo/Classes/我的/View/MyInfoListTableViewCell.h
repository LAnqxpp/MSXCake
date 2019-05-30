//
//  MyInfoListTableViewCell.h
//  LeancloudDemo
//
//  Created by LAnqxpp on 2019/5/30.
//  Copyright © 2019 Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyInfoListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *leftImg;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *contentLab;

@end

NS_ASSUME_NONNULL_END
