//
//  IVTabBarController.m
//  IvanDemo
//
//  Created by yanwu wei on 2017/4/13.
//  Copyright © 2017年 Ivan. All rights reserved.
//

#import "IVTabBarController.h"
#import "MainViewController.h"

@interface IVTabBarController ()

@end

@implementation IVTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupChildControllers];
}


- (void)setupChildControllers
{
    
    [self setupChildNavigationControllerWithTabBarImageName:@"TabbarIcon1" rootViewControllerClass:[MainViewController class] rootViewControllerTitle:@"主页"];
    
}

- (void)setupChildNavigationControllerWithTabBarImageName:(NSString *)name rootViewControllerClass:(Class)rootViewControllerClass rootViewControllerTitle:(NSString *)title
{
    UIViewController* vc = [[rootViewControllerClass alloc] init];
    vc.title = title;
    UINavigationController* nav = [[UINavigationController  alloc] initWithRootViewController:vc];
    nav.tabBarItem.image = [UIImage imageNamed:name];
    
    [self addChildViewController:nav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
