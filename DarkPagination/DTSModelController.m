//
//  DTSModelController.m
//  darkdark
//
//  Created by David Smith on 5/13/12.
//  Copyright (c) 2012 Cross Forward Consulting, LLC. All rights reserved.
//

#import "DTSModelController.h"

#import "DTSPagedViewController.h"
#import "DTSDataViewController.h"
#import "DTSBlankViewController.h"

@implementation DTSModelController

- (UIViewController *)viewControllerAtIndex:(NSUInteger)index
{       
    if(index % 2 != 0) {
        DTSBlankViewController *dataViewController = [[DTSBlankViewController alloc] init];
        dataViewController.pageNumber = index;
        return dataViewController;
    } else {
        // Create a new view controller and pass suitable data.
        DTSDataViewController *dataViewController = [[DTSDataViewController alloc] init];
        dataViewController.pageNumber = index;
        return dataViewController;
    }
}

- (NSUInteger)indexOfViewController:(DTSDataViewController *)viewController
{   
    return viewController.pageNumber;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DTSDataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DTSDataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    return [self viewControllerAtIndex:index];
}

@end
