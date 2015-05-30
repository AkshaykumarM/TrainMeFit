//
//  TMFMyWorkoutsViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFMyWorkoutsViewController.h"
#import "SWRevealViewController.h"
@interface TMFMyWorkoutsViewController ()

@end

@implementation TMFMyWorkoutsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"edit_G16.png"] style:UIBarButtonItemStylePlain target:self action:@selector(editprofile)];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.title=@"My Workouts";
    
    //array forthe picker view settings........
     _plans=[[NSArray alloc]initWithObjects:@"Programe 1",@"Programe 2",@"Programe 3",@"Prgrame 4", nil];
    
    //setting the outlet for the backround color fr the pay button.......
    _payOutlet.backgroundColor=[UIColor colorWithRed:0.0f green:0.1254f blue:0.2862f alpha:1];
    _payOutlet.layer.cornerRadius=45;
    _payOutlet.clipsToBounds=YES;
    self.planPickerView.dataSource=self;
    self.planPickerView.delegate=self;
  
    //setting the pickerviewhidden at the start......
    [_planPickerView setHidden:NO];
    
}
-(void)editprofile{
    
    
    
}
-(void)leftbuttonclick
{
    
    SWRevealViewController *sw=self.revealViewController;
    sw.rearViewRevealWidth=self.view.frame.size.width-60.0f;
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
    [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (IBAction)planSelectionBtn:(id)sender {
    //pickerView Visible here.......
    [_planPickerView setHidden:YES];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _plans.count;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _plans[row];
}
-(void)initialize{
    //adding swipe gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (IBAction)payBtn:(id)sender {
}
@end
