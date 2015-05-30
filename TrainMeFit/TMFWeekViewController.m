//
//  TMFWeekViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/9/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFWeekViewController.h"
#import "SWRevealViewController.h"
#import "WeekViewTableViewCell.h"
@implementation TMFWeekViewController


-(void)viewDidLoad{
    
    [self initializeView];
   
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"edit"] style:UIBarButtonItemStylePlain target:self action:@selector(editprofile)];
    // self.navigationItem.rightBarButtonItem.title=@"Edit";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.title=@"My Workouts";
    
    
    [super viewDidLoad];
}

-(void)editprofile{
    
    
    
}
-(void)leftbuttonclick{
    
    SWRevealViewController *sw=self.revealViewController;
    sw.rearViewRevealWidth=self.view.frame.size.width-60.0f;
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
    [self.view addGestureRecognizer:self.revealViewController.tapGestureRecognizer];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 7;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= @"workoutcell";
    
    WeekViewTableViewCell *cell=(WeekViewTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    cell.dateLBL.text =[NSString stringWithFormat:@"%d",(int)indexPath.row+1];
    cell.monthNameLBL.text = @"May";
    
    if(indexPath.row==0||indexPath.row==1){
        //cell.backImgView.backgroundColor=[UIColor colorWithRed:1 green:0.51 blue:0.545 alpha:0.95];
        //cell.backImgView.layer.cornerRadius=25;
       // cell.backImgView.clipsToBounds=YES;
        cell.workoutNameLBL.text=@"Rest Day";
        //cell.dateLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
       // cell.monthNameLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
    }
    
    if(indexPath.row==3||indexPath.row==5||indexPath.row==7){
        //cell.backImgView.backgroundColor=[UIColor colorWithRed:1 green:0.51 blue:0.545 alpha:0.95];
        //cell.backImgView.layer.cornerRadius=25;
        //cell.backImgView.clipsToBounds=YES;
        cell.workoutNameLBL.text=@"Rest Day";
        //cell.dateLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
        //cell.monthNameLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
    }
    if (indexPath.row==2||indexPath.row==4||indexPath.row==6) {
        cell.backImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
        cell.backImgView.layer.borderWidth=1.0f;
        cell.workoutNameLBL.text=@"Wokrout Day";
        [cell.backCheckImgView setImage:[UIImage imageNamed:@"checkmarkSmall.png"]];
        cell.backImgView.contentMode=UIViewContentModeScaleAspectFit;
        cell.backImgView.layer.cornerRadius=25.0f;
        cell.backImgView.clipsToBounds=YES;
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row==3||indexPath.row==5||indexPath.row==7){
      
       [self performSegueWithIdentifier:@"restDaysegue" sender:self];

    }
   else if (indexPath.row==2||indexPath.row==4||indexPath.row==6) {
         [self performSegueWithIdentifier:@"workoutDaysegue" sender:self];
        
    }

    
}

-(void)initializeView{
    //setting the width of sidebar
    
    SWRevealViewController *sw=self.revealViewController;
    sw.rearViewRevealWidth=self.view.frame.size.width-60.0f;
    self.navigationItem.leftBarButtonItem.target=self.revealViewController;
    self.navigationItem.leftBarButtonItem.action=@selector(revealToggle:);
    [self.navigationController.topViewController.navigationItem setHidesBackButton:YES];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    self.automaticallyAdjustsScrollViewInsets = NO;
}
- (IBAction)NextWeek:(id)sender {
    _WeekTitle.text=@"Week 2";
    [_WeekTableview reloadData];
    
}
- (IBAction)PreviousWeek:(id)sender {
     _WeekTitle.text=@"Week 1";
    [_WeekTableview reloadData];
}
@end
