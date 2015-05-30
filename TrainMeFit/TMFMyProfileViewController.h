//
//  TMFMyProfileViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMFMyProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *userImgView;
- (IBAction)changePictureBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *deletePictureBtn;

@end
