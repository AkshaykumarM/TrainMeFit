//
//  WeekViewTableViewCell.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeekViewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *backImgView;
@property (weak, nonatomic) IBOutlet UILabel *dateLBL;
@property (weak, nonatomic) IBOutlet UILabel *monthNameLBL;
@property (weak, nonatomic) IBOutlet UILabel *workoutNameLBL;
@property (weak, nonatomic) IBOutlet UIImageView *backCheckImgView;

@end
