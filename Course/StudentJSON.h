//
//  StudentJSON.h
//  Course
//
//  Created by Bridestory DevOps on 4/5/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface StudentJSON : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString *kelas;

@property (strong, nonatomic) NSString *number;

@property (strong, nonatomic) NSString *name;

@property (strong, nonatomic) NSString *gender;

@property (strong, nonatomic) NSString *email;

@property (strong, nonatomic) NSString *avatar;

+ (NSDictionary *)JSONKeyPathsByPropertyKey;

@end
