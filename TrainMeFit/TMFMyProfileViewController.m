//
//  TMFMyProfileViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFMyProfileViewController.h"
#import "SWRevealViewController.h"
#import "MyProfileTableViewCell.h"

@interface TMFMyProfileViewController ()

@end

@implementation TMFMyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"edit"] style:UIBarButtonItemStylePlain target:self action:@selector(editprofile)];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.leftBarButtonItem.title=@"MyProfile";
    
    //    // here to create a UILabel
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
//    label.backgroundColor = [UIColor clearColor];
//    label.textColor = [UIColor whiteColor];
//    label.numberOfLines = 2;
//    
//    // set different font for title and subtitle
//    NSMutableAttributedString * string = [[NSMutableAttributedString alloc] initWithString:@"My Profile\nWorkout"];
//    [string addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"MyriadPro-Light" size:15.0] range:NSMakeRange(0,10)];
//    [string addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"MyriadPro-Light" size:15.0] range:NSMakeRange(0,7)];
//    
//    // set line spacing
//    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
//    [paragrahStyle setLineSpacing:1];
//    [paragrahStyle setAlignment:NSTextAlignmentLeft];
//    [string addAttribute:NSParagraphStyleAttributeName value:paragrahStyle range:NSMakeRange(0, [string length])];
//    label.attributedText = string;
//    [label sizeToFit];
//    self.navigationItem.titleView.frame=CGRectMake(0, 0, 50,60);
//    self.navigationItem.titleView = label;

//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont fontWithName:@"MyriadPro-Light" size:20];
//    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
//    label.textAlignment = NSTextAlignmentLeft;
//    label.textColor = [UIColor redColor];
//    label.text = @"My Custom Title";
//    [label sizeToFit];
//    self.navigationItem.titleView.frame=CGRectMake(0, 0, 50,60);
//    self.navigationItem.titleView = label;
    // Do any additional setup after loading the view.
}
-(void)editprofile{

    [self performSegueWithIdentifier:@"editProfileSegue" sender:self];
    
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
    
    return 5;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier;
    simpleTableIdentifier= @"MyProfileCell";
    MyProfileTableViewCell *cell=(MyProfileTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    if (indexPath.row==0) {
        cell.mainLbl.text=@"Name";
        cell.detailedLbl.text=@"Response";
    }
    if (indexPath.row==1) {
        cell.mainLbl.text=@"Nick Name";
        cell.detailedLbl.text=@"Response";
    }
    if (indexPath.row==2) {
        cell.mainLbl.text=@"Age";
        cell.detailedLbl.text=@"32";
    }
    if (indexPath.row==3) {
        cell.mainLbl.text=@"Gender";
        cell.detailedLbl.text=@"Male";
    }
    if (indexPath.row==4) {
        cell.mainLbl.text=@"Height";
        cell.detailedLbl.text=@"72 Inches";
    }
    return cell;
}
/*- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    //circle outline for Profile....
    _userImgView.layer.borderColor=[[UIColor whiteColor]CGColor];
    _userImgView.layer.borderWidth=0.01f;
    _userImgView.contentMode=UIViewContentModeScaleAspectFit;
    _userImgView.layer.cornerRadius=30.0f;
    _userImgView.clipsToBounds=YES;
    _userImgView.image=[UIImage imageNamed:@"userPlaceholder60.png"];
    return _userImgView;
}*/
-(void)initialize{
    //adding swipe gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changePictureBtn:(id)sender {
}
@end
