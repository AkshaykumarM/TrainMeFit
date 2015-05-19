//
//  TMFSettingsViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFSettingsViewController.h"
#import "SWRevealViewController.h"
@interface TMFSettingsViewController ()

@end

@implementation TMFSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initialize{
    //adding swipe gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
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
