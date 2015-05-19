//
//  TourViewController.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 4/30/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"
@interface TourViewController : UIViewController<UIPageViewControllerDataSource>
- (IBAction)getStarted:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageDesc;
@property (strong, nonatomic) NSArray *pageImages;
@property (weak, nonatomic) IBOutlet UILabel *titleLBL;
@property (weak, nonatomic) IBOutlet UILabel *descLbl;
@property (weak, nonatomic) IBOutlet UIButton *getStarted;

@end
