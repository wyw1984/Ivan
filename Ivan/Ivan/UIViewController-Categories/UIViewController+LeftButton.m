//
//  UIViewController+LeftButton.m
//  weiyanwu
//
//  Created by wyw on 16/10/15.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import "UIViewController+LeftButton.h"

@implementation UIViewController (LeftButton)


- (void)initLeftBarButtonItem
{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"navigationbar_back_icon"] forState:UIControlStateNormal];

    button.frame = CGRectMake(0, 0, 30, 30);

    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
  
    
    [button addTarget:self action:@selector(leftBtClicked:) forControlEvents:UIControlEventTouchUpInside];
    

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];

}

-(void)leftBtClicked:(UIButton *)sender
{

}

@end
