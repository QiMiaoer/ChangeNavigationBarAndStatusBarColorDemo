//
//  SecondViewController.m
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/7/31.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "UIBarButtonItem+Category.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNav];
}

- (void)setNav {
    self.navItem.title = @"second";
    self.navigationBar.barTintColor = [UIColor brownColor];
    self.barStyle = UIBarStyleDefault;
    
    self.navItem.rightBarButtonItem = [UIBarButtonItem createWithTitle:@"next" titleColor:[UIColor redColor] action:^(UIButton *btn) {
        [self.navigationController pushViewController:[ThirdViewController new] animated:YES];
    }];
}

@end
