//
//  CourseListTableViewController.h
//  Course
//
//  Created by Bridestory DevOps on 3/30/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CourseViewController.h"
#import "Data.h"
#import "Course.h"

@interface CourseListTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) Course *course;

@end
