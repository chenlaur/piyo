//
//  StudentListTableViewController.h
//  Course
//
//  Created by Bridestory DevOps on 3/30/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentTableViewController.h"
#import "Data.h"
#import "Student.h"

@interface StudentListTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) Student *student;

@end
