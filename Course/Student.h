//
//  Student.h
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (strong, nonatomic) NSArray *courses;
@property (strong, nonatomic) NSString *nim;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *kelas;
@property (strong, nonatomic) NSString *picture;

- (instancetype) initWithNim: (NSString *)nim thenName:(NSString *)name thenGender:(NSString *)gender thenEmail:(NSString *)email thenKelas:(NSString *) kelas thenPicture:(NSString *)picture;

- (void)loadCourses:(NSArray *)courses;

@end
