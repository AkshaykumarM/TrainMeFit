//
//  ThirdFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 21/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "ThirdFormViewController.h"

@interface ThirdFormViewController ()

@end

@implementation ThirdFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.leftBarButtonItem.title=@"Create Profile";
    // Do any additional setup after loading the view from its nib.
    
   _firstBtn.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    _firstBtn.layer.borderWidth=1.5f;
   _firstBtn.contentMode=UIViewContentModeScaleAspectFit;
    _firstBtn.layer.cornerRadius=15.0f;
    _firstBtn.clipsToBounds=YES;
    [_firstBtn addTarget:self action:@selector(RadioButton:) forControlEvents:UIControlEventTouchUpInside];
    
    _secondBtn.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
   _secondBtn.layer.borderWidth=1.5f;
    _secondBtn.contentMode=UIViewContentModeScaleAspectFit;
    _secondBtn.layer.cornerRadius=15.0f;
    _secondBtn.clipsToBounds=YES;
    [_secondBtn addTarget:self action:@selector(RadioButton:) forControlEvents:UIControlEventTouchUpInside];
    
    _thirdBtn.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
   _thirdBtn.layer.borderWidth=1.5;
    _thirdBtn.contentMode=UIViewContentModeScaleAspectFit;
   _thirdBtn.layer.cornerRadius=15.0f;
   _thirdBtn.clipsToBounds=YES;
    [_thirdBtn addTarget:self action:@selector(RadioButton:) forControlEvents:UIControlEventTouchUpInside];
    
   _fourthBtn.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    _fourthBtn.layer.borderWidth=1.5f;
     _fourthBtn.contentMode=UIViewContentModeScaleAspectFit;
    _fourthBtn.layer.cornerRadius=15.0f;
    _fourthBtn.clipsToBounds=YES;
    [_fourthBtn addTarget:self action:@selector(RadioButton:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)leftbuttonclick{
    
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



- (IBAction)RadioButton:(UIButton *)button{
    
    for (UIButton *Radiobutton in [self.view subviews]) {
        if ([Radiobutton isKindOfClass:[UIButton class]] && ![Radiobutton isEqual:button]) {
            [Radiobutton setSelected:NO];
             Radiobutton.backgroundColor=[UIColor whiteColor];
        }
    }
    if (!button.selected) {
        button.selected = !button.selected;
         button.backgroundColor=[UIColor greenColor];
    }
}
@end
