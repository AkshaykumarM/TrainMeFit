//
//  SecondFormViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 20/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "SecondFormViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface SecondFormViewController ()

@end

@implementation SecondFormViewController
{
    UIToolbar* toolbar ;
    UIPickerView *genderPicker;
    NSArray *gendersList;
}
static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;
CGFloat animatedDistance;
- (void)viewDidLoad {
    
    
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_W.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftbuttonclick)];
    self.navigationItem.leftBarButtonItem.title=@"Create Profile";
    // Do any additional setup after loading the view.
    [self SetTextfeildBorderStyle];
    
    
    
    [self setupPicker];
    
    [super viewDidLoad];
    
    
    
}
-(void)leftbuttonclick{
    
}
-(void)SetTextfeildBorderStyle
{
    if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone)
    {
        if ([[UIScreen mainScreen] bounds].size.height == 568.0f)
        {
            
            [self textFieldBorderStyle:256];
            
        }
        else
        {
            [self textFieldBorderStyle:306];
            
        }
    }
    else
    {
        [self textFieldBorderStyle:256];
        
    }
}

-(void)textFieldBorderStyle:(int)width
{
    // Border
    CALayer *borderGender = [CALayer layer];
    borderGender.borderColor = [UIColor grayColor].CGColor;
    borderGender.borderWidth = 2;
    borderGender.frame = CGRectMake(0, -1, width, _genderTxtField.frame.size.height);
    [_genderTxtField.layer addSublayer:borderGender];
    //Top border
    UIView *topGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,width,4.0f)];
    topGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:topGenderBorder];
    
    //Left border
    UIView *leftGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_genderTxtField.frame.size.height/2)];
    leftGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:leftGenderBorder];
    
    //Right border
    UIView *rightGenderBorder = [[UIView alloc]initWithFrame:CGRectMake(width-2,0,2,_genderTxtField.frame.size.height/2)];
    rightGenderBorder.backgroundColor = [UIColor whiteColor];
    [_genderTxtField addSubview:rightGenderBorder];
    
    
    CALayer *borderAge = [CALayer layer];
    borderAge.borderColor = [UIColor grayColor].CGColor;
    borderAge.borderWidth = 2;
    //  leftBorder.frame = CGRectMake(0, 0, _firstNameTxtField.frame.size.width, _firstNameTxtField.frame.size.height+2);
    borderAge.frame = CGRectMake(0, -1, width, _ageTxtField.frame.size.height);
    [_ageTxtField.layer addSublayer:borderAge];
    
    
    UIView *topAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,width,4.0f)];
    topAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:topAgeBorder];
    
    //Left border
    UIView *leftAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_ageTxtField.frame.size.height/2)];
    leftAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:leftAgeBorder];
    
    //Right border
    UIView *rightAgeBorder = [[UIView alloc]initWithFrame:CGRectMake(width-2,0,2,_ageTxtField.frame.size.height/2)];
    rightAgeBorder.backgroundColor = [UIColor whiteColor];
    [_ageTxtField addSubview:rightAgeBorder];
    
    
    CALayer *borderWeight = [CALayer layer];
    borderWeight.borderColor = [UIColor grayColor].CGColor;
    borderWeight.borderWidth = 2;
    
    borderWeight.frame = CGRectMake(0, -1, width, _weightTxtField.frame.size.height);
    [_weightTxtField.layer addSublayer:borderWeight];
    
    UIView *topWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,width,4.0f)];
    topWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:topWeightBorder];
    
    //Left border
    UIView *leftWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_weightTxtField.frame.size.height/2)];
    leftWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:leftWeightBorder];
    
    //Right border
    UIView *rightWeightBorder = [[UIView alloc]initWithFrame:CGRectMake(width-2,0,2,_weightTxtField.frame.size.height/2)];
    rightWeightBorder.backgroundColor = [UIColor whiteColor];
    [_weightTxtField addSubview:rightWeightBorder];
    
    
    
    CALayer *borderHeight = [CALayer layer];
    borderHeight.borderColor = [UIColor grayColor].CGColor;
    borderHeight.borderWidth = 2;
    borderHeight.frame = CGRectMake(0, -1, width, _heightTxtField.frame.size.height);
    [_heightTxtField.layer addSublayer:borderHeight];
    
    
    UIView *topHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,width,4.0f)];
    topHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:topHeightBorder];
    
    //Left border
    UIView *leftHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(0,0,2,_heightTxtField.frame.size.height/2)];
    leftHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:leftHeightBorder];
    
    
    
    //Right border
    UIView *rightHeightBorder = [[UIView alloc]initWithFrame:CGRectMake(width-2,0,2,_heightTxtField.frame.size.height/2)];
    rightHeightBorder.backgroundColor = [UIColor whiteColor];
    [_heightTxtField addSubview:rightHeightBorder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
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


-(void)setupPicker{
    gendersList=[[NSArray alloc]initWithObjects:@"Male",@"Female", nil];
    genderPicker = [[UIPickerView alloc] init];
    genderPicker.dataSource = self;
    genderPicker.delegate = self;
    genderPicker.backgroundColor=[UIColor whiteColor];
    
    self.genderTxtField.inputView = genderPicker;
    self.genderTxtField.inputAccessoryView = toolbar;
    
    toolbar = [[UIToolbar alloc] init];
    toolbar.frame=CGRectMake(0,0,self.view.frame.size.width,44);
    toolbar.barStyle = UIBarStyleBlackTranslucent;
    UIBarButtonItem *flexibleSpaceLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                                   style:UIBarButtonItemStyleDone target:self
                                                                  action:@selector(doneClicked:)];
    toolbar.barTintColor=[UIColor colorWithRed:0.8 green:0.816 blue:0.839 alpha:1];
    
    [toolbar setItems:[NSArray arrayWithObjects:flexibleSpaceLeft, doneButton, nil]];
}



//setting picker view to select states

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 2;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return  1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return gendersList[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.genderTxtField.text = gendersList[row];
    
}

-(void)doneClicked:(id)sender{
    [self.view endEditing:YES];
}

//this function will end editing by dissmissing keyboard if user touches outside the textfields
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
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
