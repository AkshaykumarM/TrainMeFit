//
//  SignupViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/4/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldValidator.h"
@interface SignupViewController : UIViewController
@property (weak, nonatomic) IBOutlet TextFieldValidator *nameTXTF;

@property (weak, nonatomic) IBOutlet TextFieldValidator *nickNameTXTF;
@property (weak, nonatomic) IBOutlet TextFieldValidator *emailIdTXTF;
@property (weak, nonatomic) IBOutlet TextFieldValidator *passwordTXTF;
@property (weak, nonatomic) IBOutlet TextFieldValidator *confirmPassTXTF;
@end
