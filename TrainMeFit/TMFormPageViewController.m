//
//  TMFormPageViewController.m
//  TrainMeFit
//
//  Created by 𝓙𝓐𝓨𝓔𝓢𝓗 on 19/05/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import "TMFormPageViewController.h"
#import "FifthFormViewController.h"
#import "FourthFormViewController.h"
#import "ThirdFormViewController.h"


@interface TMFormPageViewController ()

@end



@implementation TMFormPageViewController

{
    NSArray *myViewControllers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
     // Do any additional setup after loading the view.
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Page1ID"];
    UIViewController *p2 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Page2ID"];
    
    ThirdFormViewController *tvc = [[ThirdFormViewController alloc] initWithNibName:@"ThirdFormViewController" bundle:nil];    FourthFormViewController *fvc = [[FourthFormViewController alloc] initWithNibName:@"FourthFormViewController" bundle:nil];
    FifthFormViewController *fivc = [[FifthFormViewController alloc] initWithNibName:@"FifthFormViewController" bundle:nil];
    myViewControllers = @[p1,p2,tvc,fvc,fivc];
    
    [self setViewControllers:@[p1]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
    
    
    
   
}


-(UIViewController *)viewControllerAtIndex:(NSUInteger)index
{
    return myViewControllers[index];
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
     viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    --currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}
-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    ++currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}
-(NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController
{
    return myViewControllers.count;
}

-(NSInteger)presentationIndexForPageViewController:
(UIPageViewController *)pageViewController
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
