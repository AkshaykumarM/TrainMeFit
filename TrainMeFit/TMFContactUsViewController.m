//
//  TMFContactUsViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 19/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFContactUsViewController.h"
#import "contactUsTableViewCell.h"
#import "SWRevealViewController.h"

@interface TMFContactUsViewController ()

@end

@implementation TMFContactUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 3;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    
    simpleTableIdentifier= @"contactUsCell";
    
    contactUsTableViewCell *cell=(contactUsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    if (indexPath.row==0) {
        //Phone number for the customer......
        cell.contactInfoLbl.text=@"91 8390897599";
        cell.contactTypeImgView.image=[UIImage imageNamed:@"phone32.png"];
    }
    if (indexPath.row==1) {
        //website for the customer......
        cell.contactInfoLbl.text=@"www.websiteaddress.com";
        cell.contactTypeImgView.image=[UIImage imageNamed:@"domain-32.png"];
    }
    if (indexPath.row==2) {
        cell.contactInfoLbl.text=@"Address line 1, Address line 2, Landmark, City, Zip Code";
        cell.contactTypeImgView.image=[UIImage imageNamed:@"location-32.png"];
    }
    return cell;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    _messageImgView.frame=CGRectMake(10, self.view.frame.size.height/.1027,self.view.frame.size.width/.1027,self.view.frame.size.height/.1027);
    _messageImgView.image=[UIImage imageNamed:@"message-32.png"];
    _text.frame=CGRectMake(10, self.view.frame.size.height/.15, self.view.frame.size.width/.1027, self.view.frame.size.height/.1027);
    
    
    
    return _messageImgView;
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
