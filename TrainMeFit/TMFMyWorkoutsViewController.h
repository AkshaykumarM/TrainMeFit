//
//  TMFMyWorkoutsViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/12/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMFMyWorkoutsViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *userNameLbl;
- (IBAction)planSelectionBtn:(id)sender;
- (IBAction)payBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *tryWorkoutsBtn;
@property (weak, nonatomic) IBOutlet UIButton *payOutlet;
@property (weak, nonatomic) IBOutlet UIPickerView *planPickerView;
@property(nonatomic,retain)NSArray *plans;
@end
