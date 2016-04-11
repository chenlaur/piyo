//
//  TableViewCell.h
//  Course
//
//  Created by Bridestory DevOps on 3/28/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *studentImage;
@property (weak, nonatomic) IBOutlet UILabel *studentName;
@property (weak, nonatomic) IBOutlet UILabel *studentNim;

@property (weak, nonatomic) IBOutlet UILabel *studentGender;
@end
