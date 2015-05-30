//
//  TMFStartDayViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 16/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFStartDayViewController.h"
#import "SWRevealViewController.h"
#import "StartDayTableViewCell.h"

@interface TMFStartDayViewController ()
@end

@implementation TMFStartDayViewController
@synthesize player;
- (void)viewDidLoad {
    [super viewDidLoad];
    //for the mp4 playeron screen.....
    NSURL *url=[[NSURL alloc]initWithString:@"http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v"];
    player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    player.view.frame = CGRectMake(0,self.view.frame.size.height/10.27,self.view.frame.size.width,self.view.frame.size.height/3.50);
    [self.view addSubview:player.view];
    player.allowsAirPlay=YES;
    player.fullscreen=YES;
    player.controlStyle=MPMovieControlStyleEmbedded;
    [player play];
    [self initializeView];

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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *tableIdentifier;
    
    tableIdentifier= @"startDayCell";
    
    StartDayTableViewCell *cell=(StartDayTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier forIndexPath:indexPath];
    
    cell.backImgview.layer.borderColor=[[UIColor colorWithRed:0.667 green:0.78 blue:0.486 alpha:1] CGColor];
    cell.backImgview.layer.borderWidth=1.0f;
    cell.backImgview.contentMode=UIViewContentModeScaleAspectFit;
    cell.backImgview.layer.cornerRadius=15.0f;
    cell.backImgview.clipsToBounds=YES;

    cell.mainLbl.text=@"Chest DB Files";
     cell.detailsLbl.text=@"3 Sets of 10 reps-10 Kg";
    [cell.infoImgView setImage:[UIImage imageNamed:@"infoSmall.png"]];
    
    [cell.checkmarkImgView setImage:[UIImage imageNamed:@"checkmarkSmallest.png"]];
    [cell.backStatusImgView setImage:[UIImage imageNamed:@"greenColor.png"]];
    cell.infoLbl.text=@"info";
    
    return cell;
}



- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Start the movie
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
