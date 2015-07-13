//
//  GrowthLink.h
//  GrowthLink
//
//  Created by Naoyuki Kataoka on 2015/05/29.
//  Copyright (c) 2015年 SIROK, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Growthbeat/GrowthbeatCore.h>

@interface GrowthLink : NSObject {
    
    NSString *synchronizationUrl;
    
}

@property (nonatomic, strong) NSString *synchronizationUrl;

+ (instancetype)sharedInstance;

- (void)initializeWithApplicationId:(NSString *)applicationId credentialId:(NSString *)credentialId callback:(void (^)(NSString *fallbackUrl))callback;
- (void)initializeWithApplicationId:(NSString *)applicationId credentialId:(NSString *)credentialId;

- (GBLogger *)logger;
- (GBHttpClient *)httpClient;
- (GBPreference *)preference;

- (void) handleOpenUrl:(NSURL *)url;

@end
