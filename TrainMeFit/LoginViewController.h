//
//  ViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 4/28/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldValidator.h"
#import <FacebookSDK/FacebookSDK.h>
@interface LoginViewController : UIViewController


@property (weak, nonatomic) IBOutlet TextFieldValidator *usernameTF;
@property (weak, nonatomic) IBOutlet TextFieldValidator *passwordTF;
@property (weak, nonatomic) IBOutlet UIButton *fbBTN;
//Title
@property (nonatomic, retain) NSString *Title;

//Description
@property (nonatomic, retain) NSString *Description;

@property (nonatomic, retain) NSString *image;
@property (weak, nonatomic) IBOutlet UIButton *gplusBTN;
- (IBAction)signup:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *forgotP;
- (IBAction)signIn:(id)sender;
- (IBAction)FBAction:(id)sender;

@end

