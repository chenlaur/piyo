//
//  Data.h
//  Course
//
//  Created by Bridestory DevOps on 3/30/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Course.h"
#import "Student.h"

@interface Data : NSObject

@property (strong, nonatomic) Course *course;
@property (strong, nonatomic) Course *course1;
@property (strong, nonatomic) Course *course2;
@property (strong, nonatomic) Course *course3;
@property (strong, nonatomic) Course *course4;
@property (strong, nonatomic) Course *course5;
@property (strong, nonatomic) Course *course6;

@property (strong, nonatomic) Student *student;
@property (strong, nonatomic) Student *student1;
@property (strong, nonatomic) Student *student2;
@property (strong, nonatomic) Student *student3;
@property (strong, nonatomic) Student *student4;
@property (strong, nonatomic) Student *student5;
@property (strong, nonatomic) Student *student6;

@property (strong, nonatomic) Teacher *teacher1;
@property (strong, nonatomic) Teacher *teacher2;
@property (strong, nonatomic) Teacher *teacher3;
@property (strong, nonatomic) Teacher *teacher4;
@property (strong, nonatomic) Teacher *teacher5;
@property (strong, nonatomic) Teacher *teacher6;

- (NSArray *)getData:(NSString *)parameter;

@end
