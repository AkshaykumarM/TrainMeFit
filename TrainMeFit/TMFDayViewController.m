//
//  TMFDayViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 15/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFDayViewController.h"
#import "SWRevealViewController.h"
#import "DayViewTableViewCell.h"
//@interface TMFDayViewController ()
//
//@end

@implementation TMFDayViewController

- (void)viewDidLoad {
      [super viewDidLoad];
    [self initializeView];
  
    self.navigationItem.rightBarButtonItem.title=@"1 July";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left_G.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.title=@"My Workouts";
    
    
}
-(void)leftbuttonclick{
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 7;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
   
    _backlineImgView.alpha=0.6;
    
    _backImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1]CGColor];
    _backImgView.layer.borderWidth=1.0f;
    _backImgView.contentMode=UIViewContentModeScaleAspectFit;
    _backImgView.layer.cornerRadius=25.0f;
    _backImgView.clipsToBounds=YES;
     self.backlineImgView.image = [UIImage imageNamed:@"greenColor.png"];
    _checkImgView.image=[UIImage imageNamed:@"checkmarkSmall.png"];
    _repeatImgView.image=[UIImage imageNamed:@"Repeat.png"];
    _upperLbl.text=@"workout";
    _lowerLbl.text=@"completed";
    
    
    return _backlineImgView;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *tableIdentifier;
    
    tableIdentifier= @"exerciseCell";
    
    DayViewTableViewCell *cell=(DayViewTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier forIndexPath:indexPath];
    
    cell.middleImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    cell.middleImgView.layer.borderWidth=1.0f;
    cell.middleImgView.contentMode=UIViewContentModeScaleAspectFit;
    cell.middleImgView.layer.cornerRadius=20.0f;
    cell.middleImgView.clipsToBounds=YES;
    cell.exersiceLbl.text=@"Chest DB Files";
    cell.exersiceDetailLbl.text=@"3 sets of 10 reps - 10 Kg";
    [cell.infoImg setImage:[UIImage imageNamed:@"infoSmall.png"]];
    [cell.checkImg setImage:[UIImage imageNamed:@"checkmarkSmallest.png"]];
    [cell.backImgView setImage:[UIImage imageNamed:@"greenColor.png"]];
    cell.infoLbl.text=@"info";
    
        return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
       // [self performSegueWithIdentifier:@"StartVideoSegue" sender:self];
    
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
