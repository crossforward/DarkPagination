//
//  DTSDataViewController.m
//  darkdark
//
//  Created by David Smith on 5/13/12.
//  Copyright (c) 2012 Cross Forward Consulting, LLC. All rights reserved.
//

#import "DTSDataViewController.h"

@interface DTSDataViewController ()
@property (strong, nonatomic) IBOutlet UITextView *data;

@end

@implementation DTSDataViewController

@synthesize data;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.data = [[UITextView alloc] initWithFrame:CGRectMake(0, 20, 320, 300)];
    self.data.backgroundColor = [UIColor clearColor];
    self.data.text = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    self.data.editable = NO;
    [self.view addSubview:data];
    
    UIButton* toggleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    toggleButton.frame = CGRectMake(0, 420, 320, 40);
    [toggleButton setTitle:@"Toggle Mode" forState:UIControlStateNormal];
    [toggleButton addTarget:self action:@selector(toggleMode:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:toggleButton];
}

-(void)colorViews {
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"darkMode"]) {
        self.view.backgroundColor = [UIColor blackColor];
        self.data.textColor = [UIColor lightGrayColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        self.data.textColor = [UIColor blackColor];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self colorViews];
}


-(void)toggleMode:(id)sender {
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"darkMode"]) {
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"darkMode"];
    } else {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"darkMode"];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self colorViews];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
