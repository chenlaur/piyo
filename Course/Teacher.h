//
//  Teacher.h
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *picture;

- (instancetype)initWithName:(NSString *)name thenPicture:(NSString *)picture;

@end
