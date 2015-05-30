//
//  FifthFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 21/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "FifthFormViewController.h"


@interface FifthFormViewController ()

@end

@implementation FifthFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.leftBarButtonItem.title=@"Create Profile";
}
-(void)leftbuttonclick{
    
    
}
- (IBAction)RightBtn:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Alert" message:@"Please Click On Save button" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
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

- (IBAction)savebtn:(id)sender {
    
}

@end
