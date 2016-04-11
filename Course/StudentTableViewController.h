//
//  StudentTableViewController.h
//  Course
//
//  Created by Bridestory DevOps on 3/29/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"
#import "Student.h"
#import "TableViewCell2.h"
#import "TableViewCell3.h"

@interface StudentTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, MFMailComposeViewControllerDelegate>

@property (strong, nonatomic) Student *student;

@property (strong, nonatomic) TableViewCell2 *headerCell;

@property (strong, nonatomic) TableViewCell3 *cell;

- (instancetype)initWithStudent:(Student *)student;


@end
