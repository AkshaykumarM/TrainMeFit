//
//  timeBasedTableViewCell.h
//  TrainMeFit
//
//  Created by Shantanu on 18/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timeBasedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *statusImgView;
@property (weak, nonatomic) IBOutlet UIImageView *statusBackImgView;
@property (weak, nonatomic) IBOutlet UIImageView *infoImgView;
@property (weak, nonatomic) IBOutlet UILabel *infoLbl;
@property (weak, nonatomic) IBOutlet UILabel *timeLbl;
@property (weak, nonatomic) IBOutlet UILabel *statusLbl;

@end
