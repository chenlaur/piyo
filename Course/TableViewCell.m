//
//  TableViewCell.m
//  Course
//
//  Created by Bridestory DevOps on 3/28/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [self.studentImage.layer setCornerRadius: self.studentImage.frame.size.width/2];
    self.studentImage.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
