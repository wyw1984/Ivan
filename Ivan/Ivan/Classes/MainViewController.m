//
//  MainViewController.m
//  IvanDemo
//
//  Created by yanwu wei on 2017/4/13.
//  Copyright © 2017年 Ivan. All rights reserved.
//

#import "MainViewController.h"
#import "UIViewController+AddButton.h"
#import "SettingViewController.h"
#import "LoginViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"主页";
    
    __weak __typeof(self)weakSelf = self;
    [self addBt:@"进入LoginViewController" frame:CGRectMake(20, 100, 300, 80) autoresizing:UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleBottomMargin
          block:^(id bt) {
              [weakSelf toLoginViewController];
          }];
    
    [self addBt:@"进入SettingViewController" frame:CGRectMake(20, 300, 300, 80) autoresizing:UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleBottomMargin
          block:^(id bt) {
              [weakSelf toSettingViewController];
          }];
}

-(void)toLoginViewController
{
    LoginViewController *vc = [[LoginViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self.navigationController presentViewController:nav animated:YES completion:^{
        
    }];
}

-(void)toSettingViewController
{
    SettingViewController *vc = [[SettingViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
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
