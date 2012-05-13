//
//  DTSAppDelegate.m
//  DarkPagination
//
//  Created by David Smith on 5/13/12.
//  Copyright (c) 2012 Cross Forward Consulting, LLC. All rights reserved.
//

#import "DTSAppDelegate.h"

#import "DTSRootViewController.h"

@implementation DTSAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[DTSRootViewController alloc] init];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
