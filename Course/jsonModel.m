//
//  jsonModel.m
//  Course
//
//  Created by Bridestory DevOps on 4/4/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "jsonModel.h"

@implementation jsonModel

#pragma mark - Mantle

+ (NSValueTransformer *)studentsJSONTransformer{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:StudentJSON.class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    return @{
             @"subject" : @"subject",
             @"credit" : @"credit",
             @"quota" : @"quota",
             @"cover" : @"cover",
             @"students" : @"students"
             };
}

@end
