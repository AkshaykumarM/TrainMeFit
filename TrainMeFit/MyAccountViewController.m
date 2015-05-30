//
//  MyAccountViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "MyAccountViewController.h"
#import "MyAccountTableViewCell.h"
@interface MyAccountViewController ()
@property(nonatomic,strong) NSArray *optionsOne,*optionTwo,*identifireOne;
@end

@implementation MyAccountViewController
{
    UIImageView *topProfileBtn;
}
@synthesize optionsOne,optionTwo,identifireOne;
- (void)viewDidLoad {
      
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor colorWithRed:0.992 green:0.855 blue:0.035 alpha:1],NSForegroundColorAttributeName,
                                    [UIColor colorWithRed:0.992 green:0.855 blue:0.035 alpha:1],NSBackgroundColorAttributeName,nil];
    
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;
    [self.navigationController.navigationBar setBarTintColor:[UIColor clearColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.004 green:0.09 blue:0.224 alpha:1]];

    
    optionsOne = [NSArray arrayWithObjects:@"My Workouts", @"My Profile",@"Other",@"Settings",@"Help",@"Logout", nil];
    
    
    identifireOne=[NSArray arrayWithObjects:@"firstCell",@"secondCell",@"thirdCell",@"fourthCell",@"fifthCell",@"sixthCell",nil];
    
      self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupProfilePic];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [optionsOne count];

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= [self.identifireOne objectAtIndex:indexPath.row];
    
    MyAccountTableViewCell *cell=(MyAccountTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
   
    cell.optionName.text = [optionsOne objectAtIndex:indexPath.row];
    cell.optionIcon.image = [UIImage imageNamed:@"trainmefit_W.png"];
   
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)setupProfilePic{
    /*Upper left profile pic work starts here*/
    @try{
        //here i am setting the frame of profile pic and assigning it to a button
        CGRect frameimg = CGRectMake(0, 0, 40, 40);
        topProfileBtn = [[UIImageView alloc] initWithFrame:frameimg];
        UIButton *temp=[[UIButton alloc]initWithFrame:frameimg];
        //assigning the default background image
        [topProfileBtn setImage:[UIImage imageNamed:@"trainmefit_W.png"]];
        topProfileBtn.clipsToBounds=YES;
        [temp setShowsTouchWhenHighlighted:YES];
        
        //setting up corner radious, border and border color width to make it circular
        topProfileBtn.layer.cornerRadius = 20.0f;
        topProfileBtn.layer.shadowColor=[[UIColor whiteColor] CGColor];
        [topProfileBtn setContentMode:UIViewContentModeScaleAspectFill];
      
        
        //assigning button to top bar iterm
        UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:topProfileBtn];
        
        //adding bar item to left bar button item
        self.navigationItem.leftBarButtonItem=mailbutton;
        
    }@catch(NSException *e){}
}

@end
