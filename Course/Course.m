//
//  Course.m
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "Course.h"

@implementation Course

- (instancetype) initWithSubject:(NSString *)subject thenCredits:(NSNumber *)credits thenPicture:(NSString *)picture thenTeacher:(Teacher *)teacher{
    self = [super init];
    if(self){
        self.subject = subject;
        self.credits = credits;
        self.picture = picture;
        self.teacher = teacher;
    }
    return self;
}

- (void)loadStudents:(NSArray *)students
{
    self.students = students;
    self.quota = self.getQuota;
}

- (NSNumber *)getQuota
{
    return [NSNumber numberWithInteger: self.students.count];
}

@end
