//
//  workOutPaymentViewController.m
//  TrainMeFit
//
//  Created by Shantanu on 22/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "workOutPaymentViewController.h"
#import "SWRevealViewController.h"
@interface workOutPaymentViewController ()

@end

@implementation workOutPaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeView];
    [self setborderforcard];
    [self setborderforpaypal];
    [self setborderforbankcash];
}
    -(void)setborderforbankcash{
    //border drawing for the bankcash......
    _bankcash.layer.borderColor=(__bridge CGColorRef)([UIColor colorWithRed:0.0f green:0.227f blue:0.360f alpha:1]);
    _bankcash.layer.borderWidth=0.1f;
    _bankcash.contentMode=UIViewContentModeScaleAspectFit;
    _bankcash.layer.cornerRadius=25.0f;
    _bankcash.clipsToBounds=YES;
}
    -(void)setborderforpaypal{
    //border drawing for the paypal........
    _paypal.layer.borderColor=(__bridge CGColorRef)([UIColor colorWithRed:0.0f green:0.227f blue:0.360f alpha:1]);
    _paypal.layer.borderWidth=0.1f;
    _paypal.contentMode=UIViewContentModeScaleAspectFit;
    _paypal.layer.cornerRadius=25.0f;
    _paypal.clipsToBounds=YES;
}
-(void)setborderforcard{
    //border drawing for the card_in_use........
    _cardInUse.layer.borderColor=(__bridge CGColorRef)([UIColor colorWithRed:0.0f green:0.227f blue:0.360f alpha:1]);
    _cardInUse.layer.borderWidth=0.1f;
    _cardInUse.contentMode=UIViewContentModeScaleAspectFit;
    _cardInUse.layer.cornerRadius=25.0f;
    _cardInUse.clipsToBounds=YES;
}
-(void)setborderforvisa{
    //border drawing for the visa.........
    _visa.layer.borderColor=(__bridge CGColorRef)([UIColor colorWithRed:0.0f green:0.227f blue:0.360f alpha:1]);
    _visa.layer.borderWidth=0.1f;
    _visa.contentMode=UIViewContentModeScaleAspectFit;
    _visa.layer.cornerRadius=25.0f;
    _visa.clipsToBounds=YES;

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
