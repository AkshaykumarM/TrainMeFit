//
//  ViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 4/28/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "LoginViewController.h"
#import "global.h"
#import "SVProgressHUD.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
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
}

-(void)setViewLookAndFeel{
    
    ///jhjhjhju
    UIColor *color = [UIColor lightGrayColor];
    self.usernameTF.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"User ID" attributes:@{NSForegroundColorAttributeName: color}];
    self.passwordTF.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: color}];
   
    self.fbBTN.layer.cornerRadius=self.fbBTN.frame.size.width/2;
    self.fbBTN.clipsToBounds=YES;
    
    self.gplusBTN.layer.cornerRadius=self.fbBTN.frame.size.width/2;
    self.gplusBTN.clipsToBounds=YES;

}
-(void)setupAlerts{
    
    [self.usernameTF addRegx:REGEX_EMAIL withMsg:@"Please enter valid User ID"];
    [self.passwordTF addRegx:REGEX_PASSWORD_LIMIT withMsg:@"Password should be atlest 6 digits"];
    self.usernameTF.isMandatory=YES;
    self.passwordTF.isMandatory=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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
- (IBAction)signup:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.35;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFade;
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self performSegueWithIdentifier:@"signupSeague" sender:nil];

}
- (IBAction)signIn:(id)sender {
    //if([self.usernameTF hasText]&&[self.passwordTF hasText]){
         //if([self.usernameTF validate] &[self.passwordTF validate]){
             [self startProcessing];
            if([self performSignIn:self.usernameTF.text Password:self.passwordTF.text SSOUsing:TMF])
            [self performSegueWithIdentifier:@"welcomeloginSegue" sender:nil];
            else
             [self stopProcessing];
        //}
    //}
}

- (IBAction)FBAction:(id)sender {
    
}
-(NSDictionary*)getLoginDetails{
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:self.usernameTF.text forKey:@"username"];
    [dictionary setObject:self.passwordTF.text forKey:@"password"];
      return dictionary;
}
-(int)performSignIn:(NSString*)username Password:(NSString*)password SSOUsing:(NSString*)ssoUsing{
    
   // NSError *error;
    //int status=0;
     if([global isConnected]){
//    NSData *loginJson = [NSJSONSerialization dataWithJSONObject:[self getLoginDetails] options:NSJSONWritingPrettyPrinted error:&error];
//    NSData *responseData=[global makePostRequest:loginJson requestURL:@"user-login/"];
//    if (responseData) {
//        NSDictionary *response= [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers error: &error];
//        
//        if([[response objectForKey:@"success"] isEqual:@"true"])
//            status=1;
//        else{
//            [global showAllertMsg:@"Alert" Message:[response objectForKey:ERROR_MSG]];
//            status=0;
//        }
//    }
     }
    
    return 1;
}
-(void)startProcessing{
   
    [SVProgressHUD showErrorWithStatus:@"" maskType:SVProgressHUDMaskTypeBlack];
    
}
-(void)stopProcessing{
    
    [SVProgressHUD dismiss];
    
}
@end
