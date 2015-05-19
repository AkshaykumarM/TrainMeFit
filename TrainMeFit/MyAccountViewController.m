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
@property(nonatomic,strong) NSArray *optionsOne,*optionTwo,*icons,*identifireOne;
@end

@implementation MyAccountViewController
@synthesize optionsOne,optionTwo,icons,identifireOne;
- (void)viewDidLoad {
    
    optionsOne = [NSArray arrayWithObjects:@"My Workouts",@"My Diet", @"My Profile",@"Others",@"Settings",@"Help",@"Logout", nil];
    
    icons= [NSArray arrayWithObjects:@"snach_feed_icon.png",@"myprofile.png",@"setting.png",@"billing.png",@"shpping_cart.png",@"snach_tag.png",nil];
    
    identifireOne=[NSArray arrayWithObjects:@"firstCell",@"secondCell",@"thirdCell",@"fourthCell",@"fifthCell",@"sixthCell",@"seventhCell",nil];
    
      self.automaticallyAdjustsScrollViewInsets = NO;
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
    cell.optionIcon.image = nil;
   
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

@end
