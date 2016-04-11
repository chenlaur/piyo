//
//  jsonModel.h
//  Course
//
//  Created by Bridestory DevOps on 4/4/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "StudentJSON.h"

@interface jsonModel : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString *subject;
@property (strong, nonatomic) NSNumber *credit;
@property (strong, nonatomic) NSNumber *quota;
@property (strong, nonatomic) NSString *cover;
@property (strong, nonatomic) NSArray *students;

+ (NSDictionary *)JSONKeyPathsByPropertyKey;

+ (NSValueTransformer *)studentsJSONTransformer;

@end
