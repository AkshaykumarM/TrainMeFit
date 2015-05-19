//
//  SignupViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/4/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "SignupViewController.h"
#import "global.h"
@interface SignupViewController ()

@end

@implementation SignupViewController
static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;
CGFloat animatedDistance;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewLookAndFeel];
    [self setupAlerts];

    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated{
    
        [super viewDidAppear:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)setViewLookAndFeel{
    
    
 
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)signIn:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.35;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFade;
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self performSegueWithIdentifier:@"signinSeague" sender:nil];
    
}
-(void)setupAlerts{
    //setting up error messages
    [self.nameTXTF addRegx:REGEX_USERNAME withMsg:@"Please enter valid Name"];
    
    [self.emailIdTXTF addRegx:REGEX_EMAIL withMsg:@"Please enter valid email id"];
    
    
    self.nameTXTF.isMandatory=YES;
    self.nickNameTXTF.isMandatory=YES;
    self.emailIdTXTF.isMandatory=YES;
    self.passwordTXTF.isMandatory=YES;
    self.confirmPassTXTF.isMandatory=YES;
}

- (IBAction)signup:(id)sender {
//    if([self.signupBTN.titleLabel.text isEqual:@"Next"]){
//        if([self.firstnameTF validate] &[self.lastnameTF validate]){
//             [self.signupBTN setTitle:@"Sign Up" forState:UIControlStateNormal];
//            self.firstName=self.firstnameTF.text;
//            self.lastName=self.lastnameTF.text;
//            [self.usernameTF setHidden:NO];
//            [self.passwordTF setHidden:NO];
//             [self.signupBTN setTitle:@"Sign Up" forState:UIControlStateNormal];
//           
//           
//        }
//    }
//    if([self.signupBTN.titleLabel.text isEqual:@"Sign Up"]){
//        if([self.firstnameTF validate] &[self.lastnameTF validate]){
//            [self performSegueWithIdentifier:@"welcomeSegue" sender:nil];
//            
//        }
//    }
}

-(NSDictionary*)getSignupDetails{
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:self.nameTXTF.text forKey:@"name"];
    [dictionary setObject:self.nickNameTXTF.text forKey:@"nick_name"];
    [dictionary setObject:self.emailIdTXTF.text forKey:@"email_id"];
    [dictionary setObject:self.passwordTXTF.text forKey:@"password"];
    [dictionary setObject:TMF forKey:@"sign_up_via"];
    return dictionary;
}





//if keyboard present take the view up
-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    // Try to find next responder
    UIResponder* nextResponder = [textField.superview viewWithTag:textField.tag + 1];
    if (nextResponder) {
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
        [textField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    CGRect textFieldRect =
    [self.view.window convertRect:textField.bounds fromView:textField];
    CGRect viewRect =
    [self.view.window convertRect:self.view.bounds fromView:self.view];
    CGFloat midline = textFieldRect.origin.y + 0.5 * textFieldRect.size.height;
    CGFloat numerator =
    midline - viewRect.origin.y
    - MINIMUM_SCROLL_FRACTION * viewRect.size.height;
    CGFloat denominator =
    (MAXIMUM_SCROLL_FRACTION - MINIMUM_SCROLL_FRACTION)
    * viewRect.size.height;
    CGFloat heightFraction = numerator / denominator;
    if (heightFraction < 0.0)
    {
        heightFraction = 0.0;
    }
    else if (heightFraction > 1.0)
    {
        heightFraction = 1.0;
    }
    UIInterfaceOrientation orientation =
    [[UIApplication sharedApplication] statusBarOrientation];
    if (orientation == UIInterfaceOrientationPortrait ||
        orientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        animatedDistance = floor(PORTRAIT_KEYBOARD_HEIGHT * heightFraction);
    }
    else
    {
        animatedDistance = floor(LANDSCAPE_KEYBOARD_HEIGHT * heightFraction);
    }
    CGRect viewFrame = self.view.frame;
    viewFrame.origin.y -= animatedDistance;
    
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    [self.view setFrame:viewFrame];
    
    [UIView commitAnimations];
}

- (void)textFieldDidEndEditing:(UITextField *)textfield{
    
    CGRect viewFrame = self.view.frame;
    viewFrame.origin.y += animatedDistance;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    [self.view setFrame:viewFrame];
    
    [UIView commitAnimations];
}
@end
