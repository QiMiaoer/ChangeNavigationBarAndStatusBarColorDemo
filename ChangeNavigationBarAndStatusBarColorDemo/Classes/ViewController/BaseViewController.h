//
//  BaseViewController.h
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/7/31.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UINavigationBar *navigationBar;

@property (nonatomic, strong) UINavigationItem *navItem;

@property (nonatomic, assign) UIBarStyle barStyle;

@end
