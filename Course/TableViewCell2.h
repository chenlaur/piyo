//
//  TableViewCell2.h
//  Course
//
//  Created by Bridestory DevOps on 3/29/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "Student.h"

@interface TableViewCell2 : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *studentPicture;
@property (weak, nonatomic) IBOutlet UILabel *labelNim;
@property (weak, nonatomic) IBOutlet UILabel *labelClass;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;

- (void)setStudent:(Student *)student;

- (void)setupTapEmailHandler:(void(^)())tapEmailHandler;

@end
