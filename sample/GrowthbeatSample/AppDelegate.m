//
//  AppDelegate.m
//  GrowthbeatSample
//
//  Created by Kataoka Naoyuki on 2014/08/10.
//  Copyright (c) 2014年 SIROK, Inc. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[Growthbeat sharedInstance] initializeWithApplicationId:@"OyTg8vZd4KTNQDJ5" credentialId:@"3EKydeJ0imxJ5WqS22FJfdVamFLgu7XA"];
    [[Growthbeat sharedInstance] initializeGrowthPushWithEnvironment:kGrowthPushEnvironment];
    [[Growthbeat sharedInstance] initializeGrowthReplay];
    [[Growthbeat sharedInstance] initializeGrowthAnalytics];
    [[GrowthAnalytics sharedInstance] setBasicTags];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application {
    [[GrowthAnalytics sharedInstance] close];
    [[GrowthReplay sharedInstance] stop];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[GrowthAnalytics sharedInstance] open];
    [[GrowthReplay sharedInstance] start];
}

@end
