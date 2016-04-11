//
//  AppDelegate.h
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CourseViewController.h"
#import "CourseListTableViewController.h"
#import "StudentListTableViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CourseViewController *courseViewController;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) CourseListTableViewController *courseList;

@property (strong, nonatomic) StudentListTableViewController *studentList;

@end

