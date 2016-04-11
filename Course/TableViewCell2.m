//
//  TableViewCell2.m
//  Course
//
//  Created by Bridestory DevOps on 3/29/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "TableViewCell2.h"

@interface TableViewCell2 ()

@property (strong, nonatomic) void (^tapEmailHandler)();

@end

@implementation TableViewCell2

- (void)awakeFromNib {
    [self.studentPicture.layer setCornerRadius:self.studentPicture.frame.size.width/2];
    self.studentPicture.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)onTap:(id)sender{
    if (self.tapEmailHandler) {
        self.tapEmailHandler();
    }
}

- (void)setupTapEmailHandler:(void(^)())tapEmailHandler
{
    self.tapEmailHandler = tapEmailHandler;
}

- (void)setStudent:(Student *)student{
    self.studentPicture.image = [UIImage imageNamed:student.picture];
    self.labelNim.text = student.nim;
    self.labelClass.text = student.kelas;
    self.labelEmail.text = student.email;
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget: self action:@selector(onTap:)];
    singleTap.numberOfTapsRequired = 1;
    [self.labelEmail addGestureRecognizer:singleTap];
    self.labelEmail.userInteractionEnabled = YES;
}

@end
