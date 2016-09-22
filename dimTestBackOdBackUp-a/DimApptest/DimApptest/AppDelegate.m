//
//  AppDelegate.m
//  DimApptest
//
//  Created by Borut on 10/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "AppDelegate.h"
#import "Root.h"
#import "MainWithSlideBAr.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize nav, PlayerInfoArray,playerToShow,PlayerMainInfo,arrayOfIDsPlayer, arrayOfPics,arrayOfDefensivePlayers,arrayOfGoolkeapers,arrayOfMidfilders,arrayOfAttacks,arrayOfWholePostions, arrayOFUrlForTickets;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    
    
   //
//    // show splash screen first and a progress view indicator
//    nav = [[UINavigationController alloc] initWithRootViewController:firstView];
//    nav.navigationBar.translucent = NO;
//    self.window.rootViewController = nav;
    Root *mainVc = [[Root alloc]init];
    UINavigationController *mainNVC = [[[UINavigationController alloc]init] initWithRootViewController:mainVc];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = mainNVC;
    
    [self.window makeKeyAndVisible];
    
    PlayerInfoArray = [NSMutableDictionary new];
   // PlayerMainInfo = [NSMutableDictionary new];
    arrayOfIDsPlayer = [NSMutableArray new];
    arrayOfPics = [NSMutableArray new];
    
    arrayOfDefensivePlayers = [NSMutableArray new];
    arrayOfGoolkeapers = [NSMutableArray new];
    arrayOfMidfilders = [NSMutableArray new];
    arrayOfAttacks = [NSMutableArray new];
    arrayOfWholePostions = [NSMutableArray new];
    arrayOFUrlForTickets = [NSMutableArray new];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
