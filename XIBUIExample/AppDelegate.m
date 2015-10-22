//
//  AppDelegate.m
//  XIBUIExample
//
//  Created by Matt Brenneke on 10/22/15.
//  Copyright © 2015 National Information Solutions Cooperative. All rights reserved.
//

#import "AppDelegate.h"

#import "SimpleTableViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong, readwrite) UINavigationController *navController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    SimpleTableViewController *tvc = [[SimpleTableViewController alloc] initWithNibName:@"SimpleTableViewController" bundle:[NSBundle mainBundle]];
    _navController = [[UINavigationController alloc] initWithRootViewController:tvc];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window addSubview:_navController.view];
    [self.window setRootViewController:_navController];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
