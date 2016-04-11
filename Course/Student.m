//
//  Student.m
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype) initWithNim: (NSString *)nim thenName:(NSString *)name thenGender:(NSString *)gender thenEmail:(NSString *)email thenKelas:(NSString *) kelas thenPicture:(NSString *)picture{
    self = [super init];
    if(self){
        self.nim = nim;
        self.name = name;
        self.gender = gender;
        self.email = email;
        self.kelas = kelas;
        self.picture = picture;
    }
    return self;
}

- (void)loadCourses:(NSArray *)courses{
    self.courses = courses;
}

@end
