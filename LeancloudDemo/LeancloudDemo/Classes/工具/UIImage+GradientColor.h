//
//  UIImage+GradientColor.h
//  NavChangeColor
//
//  Created by 吴腾飞 on 2018/10/23.
//  Copyright © 2018 Damon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, GradientType) {
    GradientTypeTopToBottom = 0,//从上到小
    GradientTypeLeftToRight = 1,//从左到右
    GradientTypeUpleftToLowright = 2,//左上到右下
    GradientTypeUprightToLowleft = 3,//右上到左下
};

@interface UIImage (GradientColor)

+ (UIImage *)gradientColorImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType imgSize:(CGSize)imgSize;

/**
 根据颜色生成图片
 
 @param color 颜色
 @param size 图片大小
 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 根据颜色生成（1，1）图片
 
 @param color 颜色
 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 改变图片颜色
 
 @param color 颜色
 @return 图片
 */
- (UIImage *)changeImageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
