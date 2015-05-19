//
//  RestDayTableViewCell.h
//  TrainMeFit
//
//  Created by Shantanu on 18/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestDayTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *backImgView;
@property (weak, nonatomic) IBOutlet UILabel *mainLbl;
@property (weak, nonatomic) IBOutlet UILabel *detailLbl;
@property (weak, nonatomic) IBOutlet UILabel *infoLbl;
@property (weak, nonatomic) IBOutlet UIImageView *infoImgView;
@property (weak, nonatomic) IBOutlet UIImageView *playImgView;
@property (weak, nonatomic) IBOutlet UILabel *tryLbl;

@end
