//
//  DayViewTableViewCell.h
//  TrainMeFit
//
//  Created by Shantanu on 15/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayViewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *checkImg;
@property (weak, nonatomic) IBOutlet UILabel *exersiceLbl;
@property (weak, nonatomic) IBOutlet UILabel *exersiceDetailLbl;
@property (weak, nonatomic) IBOutlet UIImageView *infoImg;
@property (weak, nonatomic) IBOutlet UILabel *infoLbl;
@property (weak, nonatomic) IBOutlet UIImageView *backImgView;
@property (weak, nonatomic) IBOutlet UIImageView *middleImgView;

@end
