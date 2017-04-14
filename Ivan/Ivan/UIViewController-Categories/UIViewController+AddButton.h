//
//  UIViewController+AddButton.h
//  weiyanwu
//
//  Created by wyw on 16/10/14.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockButton.h"

@interface UIViewController (AddButton)

-(void)addBt:(NSString *)title frame:(CGRect)frame autoresizing:(UIViewAutoresizing)autoresizing block:(void (^)(BlockButton *button))block;

@end
