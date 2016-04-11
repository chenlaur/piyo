//
//  Data.m
//  Course
//
//  Created by Bridestory DevOps on 3/30/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "Data.h"

@implementation Data{
    NSArray *students;
    NSArray *courses;
}

- (NSArray *)getData:(NSString *)parameter{
    self.teacher1 = [[Teacher alloc] initWithName: @"Rio Djanerio" thenPicture: @"rio djanerio.jpg"];
    self.teacher2 = [[Teacher alloc] initWithName: @"Hilarius" thenPicture: @"hilarius.jpg"];
    self.teacher3 = [[Teacher alloc] initWithName: @"Yudi Wahyu" thenPicture: @"yudi wahyu.jpg"];
    self.teacher4 = [[Teacher alloc] initWithName: @"Hendra Herlambang" thenPicture: @"hendra herlambang.jpg"];
    self.teacher5 = [[Teacher alloc] initWithName: @"Anna Wijaya" thenPicture: @"anna wijaya.jpg"];
    self.teacher6 = [[Teacher alloc] initWithName: @"Sugiarti" thenPicture: @"sugiarti.jpg"];
    
    self.student1 = [[Student alloc] initWithNim:@"1701311480" thenName:@"Cindy" thenGender:@"Female" thenEmail:@"cindy@yahoo.com" thenKelas:@"B" thenPicture:@"cindy.jpg"];
    self.student2 = [[Student alloc] initWithNim:@"1701233214" thenName:@"Olivia Cindy" thenGender:@"Female" thenEmail:@"olivia@gmail.com" thenKelas:@"A" thenPicture:@"olivia cindy.jpg"];
    self.student3 = [[Student alloc] initWithNim:@"1704019787" thenName:@"Ferdinand" thenGender:@"Male" thenEmail:@"ferdinand@gmail.com" thenKelas:@"E" thenPicture:@"ferdinand.jpg"];
    self.student4 = [[Student alloc] initWithNim:@"170873378" thenName:@"Ryan" thenGender:@"Male" thenEmail:@"ryan@yahoo.com" thenKelas:@"D" thenPicture:@"ryan.jpg"];
    self.student5 = [[Student alloc] initWithNim:@"1701217993" thenName:@"Madeline Thamrin" thenGender:@"Female" thenEmail:@"madelinethamrin@yahoo.com" thenKelas:@"C" thenPicture:@"madeline thamrin.jpg"];
    self.student6 = [[Student alloc] initWithNim:@"1702196441" thenName:@"Andy Tan" thenGender:@"Male" thenEmail:@"andytan@yahoo.com" thenKelas:@"F" thenPicture:@"andy tan.jpg"];
    
    self.course1 = [[Course alloc] initWithSubject:@"Mathematics" thenCredits:@4 thenPicture:@"mathematics.jpg" thenTeacher: self.teacher1];
    self.course2 = [[Course alloc] initWithSubject:@"Sociology" thenCredits:@2 thenPicture:@"sociology.jpeg" thenTeacher: self.teacher2];
    self.course3 = [[Course alloc] initWithSubject:@"Economy" thenCredits:@4 thenPicture:@"economy.jpg" thenTeacher: self.teacher3];
    self.course4 = [[Course alloc] initWithSubject:@"Physics" thenCredits:@4 thenPicture:@"physics.jpg" thenTeacher: self.teacher4];
    self.course5 = [[Course alloc] initWithSubject:@"English" thenCredits:@2 thenPicture:@"english.jpg" thenTeacher: self.teacher5];
    self.course6 = [[Course alloc] initWithSubject:@"Chemistry" thenCredits:@4 thenPicture:@"chemistry.jpg" thenTeacher: self.teacher6];
    
    [self.course1 loadStudents:@[self.student1, self.student2, self.student3]];
    [self.course2 loadStudents:@[self.student2, self.student3, self.student4, self.student5]];
    [self.course3 loadStudents:@[self.student2, self.student3, self.student4, self.student5, self.student6]];
    [self.course4 loadStudents:@[self.student1, self.student2, self.student3, self.student4, self.student5, self.student6]];
    [self.course5 loadStudents:@[self.student1, self.student2, self.student3]];
    [self.course6 loadStudents:@[self.student1, self.student5]];
    
    [self.student1 loadCourses:@[self.course1, self.course4, self.course5, self.course6]];
    [self.student2 loadCourses:@[self.course1, self.course4, self.course5]];
    [self.student3 loadCourses:@[self.course1, self.course2, self.course3, self.course4, self.course5]];
    [self.student4 loadCourses:@[self.course2, self.course3, self.course4]];
    [self.student5 loadCourses:@[self.course2, self.course3, self.course4, self.course6]];
    [self.student6 loadCourses:@[self.course3, self.course4]];
    
    if([parameter isEqualToString:@"student"]){
        students = [[NSArray alloc] initWithObjects: self.student1, self.student2, self.student3, self.student4, self.student5, self.student6, nil];
        return students;
    }
    else{
        courses = [[NSArray alloc] initWithObjects: self.course1, self.course2, self.course3, self.course4, self.course5, self.course6, nil];
        return courses;
    }
}



@end
