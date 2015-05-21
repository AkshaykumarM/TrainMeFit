//
//  SecondFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 20/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "SecondFormViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SecondFormViewController ()

@end

@implementation SecondFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Border
    CALayer *borderGender = [CALayer layer];
    borderGender.borderColor = [UIColor grayColor].CGColor;
    borderGender.borderWidth = 2;
    borderGender.frame = CGRectMake(0, -1, _genderTxtField.frame.size.width, _genderTxtField.frame.size.height);
    [_genderTxtField.layer addSublayer:borderGender];
    //Top border
    UIView *topGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_genderTxtField.frame.size.width,4.0f)];
    topGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:topGenderBorder];
    
    //Left border
    UIView *leftGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_genderTxtField.frame.size.height/2)];
   leftGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:leftGenderBorder];
    
    //Right border
    UIView *rightGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(_genderTxtField.frame.size.width-2,0,2,_genderTxtField.frame.size.height/2)];
    rightGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:rightGenderBorder];
    
    
    CALayer *borderAge = [CALayer layer];
    borderAge.borderColor = [UIColor grayColor].CGColor;
    borderAge.borderWidth = 2;
    //  leftBorder.frame = CGRectMake(0, 0, _firstNameTxtField.frame.size.width, _firstNameTxtField.frame.size.height+2);
    borderAge.frame = CGRectMake(0, -1, _ageTxtField.frame.size.width, _ageTxtField.frame.size.height);
    [_ageTxtField.layer addSublayer:borderAge];
    
    
    UIView *topAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_ageTxtField.frame.size.width,4.0f)];
       topAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:topAgeBorder];
    
    //Left border
    UIView *leftAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_ageTxtField.frame.size.height/2)];
    leftAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:leftAgeBorder];
    
    //Right border
    UIView *rightAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(_ageTxtField.frame.size.width-2,0,2,_ageTxtField.frame.size.height/2)];
    rightAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:rightAgeBorder];
    
    
    CALayer *borderWeight = [CALayer layer];
    borderWeight.borderColor = [UIColor grayColor].CGColor;
    borderWeight.borderWidth = 2;

    borderWeight.frame = CGRectMake(0, -1, _weightTxtField.frame.size.width, _weightTxtField.frame.size.height);
    [_weightTxtField.layer addSublayer:borderWeight];
    
    UIView *topWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_weightTxtField.frame.size.width,4.0f)];
    topWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:topWeightBorder];
    
    //Left border
    UIView *leftWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_weightTxtField.frame.size.height/2)];
    leftWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:leftWeightBorder];
    
    //Right border
    UIView *rightWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(_weightTxtField.frame.size.width-2,0,2,_weightTxtField.frame.size.height/2)];
    rightWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:rightWeightBorder];
    
    
    
    CALayer *borderHeight = [CALayer layer];
    borderHeight.borderColor = [UIColor grayColor].CGColor;
    borderHeight.borderWidth = 2;
       borderHeight.frame = CGRectMake(0, -1, _heightTxtField.frame.size.width, _heightTxtField.frame.size.height);
    [_heightTxtField.layer addSublayer:borderHeight];
    
    
    UIView *topHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,_heightTxtField.frame.size.width,4.0f)];
    topHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:topHeightBorder];
    
    //Left border
    UIView *leftHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_heightTxtField.frame.size.height/2)];
    leftHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:leftHeightBorder];
    
    
       
    //Right border
    UIView *rightHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(_heightTxtField.frame.size.width-2,0,2,_heightTxtField.frame.size.height/2)];
    rightHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:rightHeightBorder];
    
    
    
    
    
   
    
    
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
