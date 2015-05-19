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
    
    [super viewDidLoad];
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
    
    cell.dateLBL.text =[NSString stringWithFormat:@"%ld",indexPath.row+1];
    cell.monthNameLBL.text = @"May";
    
    if(indexPath.row==3||indexPath.row==5||indexPath.row==7){
        cell.backImgView.backgroundColor=[UIColor colorWithRed:1 green:0.51 blue:0.545 alpha:0.95];
        cell.backImgView.layer.cornerRadius=25;
        cell.backImgView.clipsToBounds=YES;
        cell.workoutNameLBL.text=@"Rest Day";
        cell.dateLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
        cell.monthNameLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
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
@end
