//
//  TableViewCell3.h
//  Course
//
//  Created by Bridestory DevOps on 3/29/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell3 : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *coursePicture;
@property (weak, nonatomic) IBOutlet UILabel *labelSubject;
@property (weak, nonatomic) IBOutlet UILabel *labelHistory;
@property (weak, nonatomic) IBOutlet UILabel *labelQuota;
@property (weak, nonatomic) IBOutlet UILabel *labelTeacher;

@end
