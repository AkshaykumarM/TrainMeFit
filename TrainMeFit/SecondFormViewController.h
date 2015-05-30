//
//  SecondFormViewController.h
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 20/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondFormViewController : UIViewController <UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *heightTxtField;
@property (weak, nonatomic) IBOutlet UITextField *weightTxtField;
@property (weak, nonatomic) IBOutlet UITextField *ageTxtField;
@property (weak, nonatomic) IBOutlet UITextField *genderTxtField;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;

@end
