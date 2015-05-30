//
//  TMFRestDayViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 18/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFRestDayViewController.h"
#import "RestDayTableViewCell.h"
#import "SWRevealViewController.h"

@interface TMFRestDayViewController ()

@end

@implementation TMFRestDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeView];
    
    self.navigationItem.rightBarButtonItem.title=@"1 July";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left_G.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.title=@"My Workouts";
    // Do any additional setup after loading the view.
}

-(void)leftbuttonclick{
    
     [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 7;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= @"restDayCell";
    
    RestDayTableViewCell *cell=(RestDayTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    cell.mainLbl.text=@"chest DB files";
    cell.detailLbl.text=@"3 sets of 10 reps – 10 kg";
    cell.backImgView.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    cell.backImgView.layer.borderWidth=1.0f;
    cell.backImgView.contentMode=UIViewContentModeScaleAspectFit;
    cell.backImgView.layer.cornerRadius=30.0f;
    cell.backImgView.clipsToBounds=YES;
    
    [cell.infoImgView setImage:[UIImage imageNamed:@"infoSmall.png"]];
    [cell.playImgView setImage:[UIImage imageNamed:@"play20.png"]];

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
