//
//  TourViewController.m
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 4/30/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TourViewController.h"
#import "LoginViewController.h"
@interface TourViewController ()

@end

@implementation TourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _pageTitles = @[@"Feture name", @"End of On-boarding tour"];
    _pageDesc=@[@"Small description of the feture in two to three lines here",@""];
    _pageImages = @[@"tour1.png", @"tour2.png"];
    
    // Create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    PageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 175);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];

}
- (IBAction)getStarted:(id)sender {
    //LoginViewController *login=[]
    CATransition* transition = [CATransition animation];
    transition.duration = 0.35;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFade;
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self performSegueWithIdentifier:@"loginSeague" sender:nil];
}

- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
        
        return nil;
    }

        self.titleLBL.text=_pageTitles[index];
        self.descLbl.text=_pageDesc[index];
    
    // Create a new view controller and pass suitable data.
    PageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageContentViewController.imageFile = self.pageImages[index];
    pageContentViewController.titleText = self.pageTitles[index];
    pageContentViewController.pageIndex = index;
    
    
    return pageContentViewController;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    self.titleLBL.text=_pageTitles[((PageContentViewController*) viewController).pageIndex];
    self.descLbl.text=_pageDesc[((PageContentViewController*) viewController).pageIndex];
    if(((PageContentViewController*) viewController).pageIndex==1){
        [self.getStarted setHidden:NO];
    }
    else{
        [self.getStarted setHidden:YES];
    }
   
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;

    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    

    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    self.titleLBL.text=_pageTitles[((PageContentViewController*) viewController).pageIndex];
    self.descLbl.text=_pageDesc[((PageContentViewController*) viewController).pageIndex];
    if(((PageContentViewController*) viewController).pageIndex==1){
        [self.getStarted setHidden:NO];
    }
    else{
         [self.getStarted setHidden:YES];
    }
    NSUInteger index = ((PageContentViewController*) viewController).pageIndex;
   
    if (index == NSNotFound) {
        return nil;
    }
    

    index++;
    if (index == [self.pageTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
 
    return 0;
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

@end
