//
//  FourthFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 21/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "FourthFormViewController.h"

@interface FourthFormViewController ()

@end

@implementation FourthFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  //  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //[_noButton setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateNormal];
    
  /*  [_noButton addTarget:self action:@selector(roundButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    //width and height should be same value
    _noButton.frame = CGRectMake(0, 0, 50, 50);
    
    //Clip/Clear the other pieces whichever outside the rounded corner
    _noButton.clipsToBounds = YES;
    
    //half of the width
    _noButton.layer.cornerRadius = 50/2.0f;
    _noButton.layer.borderColor=[UIColor redColor].CGColor;
    _noButton.layer.borderWidth=2.0f;*/
    
    _noButton.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    _noButton.layer.borderWidth=1.0f;
    _noButton.contentMode=UIViewContentModeScaleAspectFit;
    _noButton.layer.cornerRadius=45.0f;
    _noButton.clipsToBounds=YES;
    
    
    
    
   
    
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}
-(void)roundButtonDidTap:(UIButton*)tappedButton{
    
    NSLog(@"roundButtonDidTap Method Called");
    
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
