//
//  ThirdViewController.m
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/8/1.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import "ThirdViewController.h"
#import "UIBarButtonItem+Category.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNav];
}

- (void)setNav {
    self.navItem.title = @"third";
    self.navigationBar.barTintColor = [UIColor orangeColor];
    self.barStyle = UIBarStyleDefault;
    
    __weak typeof(self) weakSelf = self;
    UIBarButtonItem *titleItem = [UIBarButtonItem createWithTitle:@"title" titleColor:[UIColor blueColor] action:^(UIButton *button) {
        weakSelf.view.backgroundColor = [UIColor cyanColor];
    }];
    UIBarButtonItem *imageItem = [UIBarButtonItem createWithImage:[UIImage imageNamed:@"头像.jpg"] action:^(UIButton *button) {
        weakSelf.view.backgroundColor = [UIColor brownColor];
    }];
    
    self.navItem.rightBarButtonItems = @[titleItem, imageItem];
}

@end
