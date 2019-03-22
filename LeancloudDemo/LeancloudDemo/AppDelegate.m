//
//  AppDelegate.m
//  LeancloudDemo
//
//  Created by mac on 2019/3/22.
//  Copyright © 2019年 Robinson. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"CysAtkPSVByYWYEOUs053aX0-gzGzoHsz" clientKey:@"Df3wPC5xOHHmC0suadffR5E8"];
    // 放在 SDK 初始化语句 [AVOSCloud setApplicationId:] 后面，只需要调用一次即可
    [AVOSCloud setAllLogsEnabled:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dddd:) name:EBBannerViewDidClick object:nil];

    
    
    // Override point for customization after application launch.
    return YES;
}
//ios7 only
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [EBForeNotification handleRemoteNotification:userInfo soundID:1312 isIos10:NO];
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [EBForeNotification handleRemoteNotification:userInfo soundID:1312 isIos10:NO];
}



-(void)dddd:(NSNotification*)noti{
    NSLog(@"ddd,%@",noti);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
