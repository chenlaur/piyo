//
//  Course.h
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"

@interface Course : NSObject

@property (strong, nonatomic) Teacher *teacher;
@property (strong, nonatomic) NSArray *students;
@property (strong, nonatomic) NSString *subject;
@property NSNumber *credits;
@property NSNumber *quota;
@property (strong, nonatomic) NSString *picture;
@property (strong, nonatomic) NSString *handBook;

- (instancetype) initWithSubject:(NSString *)subject thenCredits:(NSNumber *)credits thenPicture:(NSString *)picture thenTeacher:(Teacher *)teacher;

- (NSNumber *)getQuota;

- (void)loadStudents:(NSArray *)students;

@end
