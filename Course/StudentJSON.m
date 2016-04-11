//
//  StudentJSON.m
//  Course
//
//  Created by Bridestory DevOps on 4/5/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "StudentJSON.h"

@implementation StudentJSON

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"kelas" : @"class",
             @"number" : @"studentNumber",
             @"name" : @"name",
             @"gender" : @"gender",
             @"email" : @"email",
             @"avatar" : @"avatar"
             };
}

@end
