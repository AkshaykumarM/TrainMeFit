//
//  TMFormPageViewController.h
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 19/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMFormPageViewController : UIPageViewController<UIPageViewControllerDataSource,UIPageViewControllerDelegate>
{
    
    UIImage* inactiveImage;
}

@property(nonatomic, retain) UIImage* inactiveImage;
@end
