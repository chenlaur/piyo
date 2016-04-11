//
//  CourseViewController.h
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"
#import "Student.h"
#import "Teacher.h"
#import "TableViewCell.h"
#import "StudentTableViewController.h"
#import <Mantle/Mantle.h>
#import "jsonModel.h"
#import "StudentJSON.h"
#import <AFNetworking.h>

@interface CourseViewController : UIViewController

@property (strong, nonatomic) Course *course;

@property (strong, nonatomic) Student *student;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *teacherPicture;
@property (weak, nonatomic) IBOutlet UIImageView *coursePicture;
@property (weak, nonatomic) IBOutlet UILabel *labelSubject;
@property (weak, nonatomic) IBOutlet UILabel *labelCredits;
@property (weak, nonatomic) IBOutlet UILabel *labelQuota;
@property (weak, nonatomic) IBOutlet UILabel *labelTeacher;

- (instancetype)initWithCourse:(Course *)course;

@end
