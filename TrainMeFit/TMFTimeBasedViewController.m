//
//  TMFTimeBasedViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 18/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFTimeBasedViewController.h"
#import "timeBasedTableViewCell.h"
#import "SWRevealViewController.h"
@interface TMFTimeBasedViewController ()

@end

@implementation TMFTimeBasedViewController

- (void)viewDidLoad {
    
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
    
    simpleTableIdentifier= @"timeBasedCell";
    
    timeBasedTableViewCell *cell=(timeBasedTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    cell.statusLbl.text=@"Skipped";
    cell.timeLbl.text=@"10 mins";
    
    //circle outline.....
    cell.statusImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    cell.statusImgView.layer.borderWidth=1.0f;
    cell.statusImgView.contentMode=UIViewContentModeScaleAspectFit;
    cell.statusImgView.layer.cornerRadius=10.0f;
    cell.statusImgView.clipsToBounds=YES;
    
    //image setting for status and the image views of cell....
    [cell.statusBackImgView setImage:[UIImage imageNamed:@"greenColor.png"]];
    [cell.infoImgView setImage:[UIImage imageNamed:@"infoSmall.png"]];
    return cell;
    
    //[cell.playImgView setImage:[UIImage imageNamed:@"play20.png"]];
    //    if(indexPath.row==3){
    //        cell.backImgView.backgroundColor=[UIColor colorWithRed:1 green:0.51 blue:0.545 alpha:0.95];
    //        cell.backImgView.layer.cornerRadius=25;
    //        cell.backImgView.clipsToBounds=YES;
    //
    //        //cell.dateLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
    //        //cell.monthNameLBL.textColor=[UIColor colorWithRed:0.976 green:0.439 blue:0.478 alpha:1];
    //    }
    //    if (indexPath.row==2) {
    //
    //
    //    }
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    //circle outline for workouts....
    _BackImgView.alpha=0.6;
    _BackImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1]CGColor];
    _BackImgView.layer.borderWidth=1.5f;
    _BackImgView.contentMode=UIViewContentModeScaleAspectFit;
    _BackImgView.layer.cornerRadius=25.0f;
    _BackImgView.clipsToBounds=YES;
    _BackImgView.image=[UIImage imageNamed:@"play24.png"];
    //_BackImgView.image=[UIImage imageNamed:@"stop24.png"];
    
    //setting images for playpause action Image
    self.backStatusImgView.image = [UIImage imageNamed:@"greenColor.png"];
    _playPauseImgView.image=[UIImage imageNamed:@"checkmarkSmall.png"];
    _mainLbl.text=@"Start";
    _detailedLbl.text=@"time based Workout";
 
    return _backStatusImgView;
    
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
