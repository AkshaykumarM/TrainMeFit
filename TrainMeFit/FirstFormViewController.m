//
//  FirstFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 20/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "FirstFormViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FirstFormViewController ()

@end

@implementation FirstFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Border color
    CALayer *borderFirstName = [CALayer layer];
    borderFirstName.borderColor = [UIColor grayColor].CGColor;
    borderFirstName.borderWidth = 2;
    borderFirstName.frame = CGRectMake(0, -1, _firstNameTxtField.frame.size.width, _firstNameTxtField.frame.size.height);
    [_firstNameTxtField.layer addSublayer:borderFirstName];
    
    //Top border
    UIView *topFirstNameBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_firstNameTxtField.frame.size.width,4.0f)];
    topFirstNameBorder.backgroundColor = [UIColor whiteColor];
    [_firstNameTxtField addSubview:topFirstNameBorder];
    
    //Left border
    UIView *leftFirstNameBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_firstNameTxtField.frame.size.height/2)];
    leftFirstNameBorder.backgroundColor = [UIColor whiteColor];
    [_firstNameTxtField addSubview:leftFirstNameBorder];
    
    //Right border
    UIView *rightFirstNameBorder = [[UIView alloc]initWithFrame:CGRectMake(_firstNameTxtField.frame.size.width-2,0,2,_firstNameTxtField.frame.size.height/2)];
    rightFirstNameBorder.backgroundColor = [UIColor whiteColor];
    [_firstNameTxtField addSubview:rightFirstNameBorder];
    
    //Border color
    CALayer *borderLastName = [CALayer layer];
    borderLastName.borderColor = [UIColor grayColor].CGColor;
    borderLastName.borderWidth = 2;
    borderLastName.frame = CGRectMake(0, -1, _lastNameTxtField.frame.size.width, _lastNameTxtField.frame.size.height);
    [_lastNameTxtField.layer addSublayer:borderLastName];
    
    //Top border
    UIView *topLastNameBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_lastNameTxtField.frame.size.width,4.0f)];
    topLastNameBorder.backgroundColor = [UIColor whiteColor];
    [_lastNameTxtField addSubview:topLastNameBorder];
    
    //Left border
    UIView *leftLastNameBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_lastNameTxtField.frame.size.height/2)];
    leftLastNameBorder.backgroundColor = [UIColor whiteColor];
    [_lastNameTxtField addSubview:leftLastNameBorder];
    
    //Right border
    UIView *rightLastNameBorder = [[UIView alloc]initWithFrame:CGRectMake(_firstNameTxtField.frame.size.width-2,0,2,_lastNameTxtField.frame.size.height/2)];
    rightLastNameBorder.backgroundColor = [UIColor whiteColor];
    [_lastNameTxtField addSubview:rightLastNameBorder];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
