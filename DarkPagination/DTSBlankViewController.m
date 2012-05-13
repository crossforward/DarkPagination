//
//  DTSBlankViewController.m
//  DarkPagination
//
//  Created by David Smith on 5/13/12.
//  Copyright (c) 2012 Cross Forward Consulting, LLC. All rights reserved.
//

#import "DTSBlankViewController.h"

@interface DTSBlankViewController ()

@end

@implementation DTSBlankViewController

-(void)viewWillAppear:(BOOL)animated {
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"darkMode"]) {
        self.view.backgroundColor = [UIColor blackColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
