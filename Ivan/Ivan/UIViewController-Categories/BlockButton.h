//
//  BlockButton.h
//  weiyanwu
//
//  Created by wyw on 16/10/14.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlockButton;


@interface BlockButton : UIButton

@property(nonatomic,copy) void (^block)(BlockButton *bt);


@end
