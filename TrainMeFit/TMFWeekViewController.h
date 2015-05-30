//
//  TMFWeekViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/9/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TMFWeekViewController : UIViewController
- (IBAction)NextWeek:(id)sender;
- (IBAction)PreviousWeek:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *WeekTitle;
@property (weak, nonatomic) IBOutlet UITableView *WeekTableview;

@end
