//
//  Teacher.m
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (instancetype)initWithName:(NSString *)name thenPicture:(NSString *)picture{
    self = [super init];
    if(self){
        self.name = name;
        self.picture = picture;
    }
    return self;
}

@end
