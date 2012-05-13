//
//  DTSModelController.h
//  darkdark
//
//  Created by David Smith on 5/13/12.
//  Copyright (c) 2012 Cross Forward Consulting, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DTSPagedViewController;

@interface DTSModelController : NSObject <UIPageViewControllerDataSource>

- (DTSPagedViewController *)viewControllerAtIndex:(NSUInteger)index;
- (NSUInteger)indexOfViewController:(DTSPagedViewController *)viewController;

@end
