//
//  BaseViewController.m
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/7/31.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setHidden:YES];
    [self setNavigationBar];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barStyle = self.barStyle;
    
    if (self.navigationController.viewControllers.count > 1) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"back" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn sizeToFit];
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
        self.navItem.leftBarButtonItem = item;
    }
}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (UIBarStyle)barStyle {
    if (!_barStyle) {
        _barStyle = UIBarStyleDefault;
    }
    return _barStyle;
}

- (void)setNavigationBar {
    self.navItem = [UINavigationItem new];
    self.navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    self.navigationBar.items = @[self.navItem];
    self.navigationBar.barTintColor = [UIColor whiteColor];
    [self.view addSubview:self.navigationBar];
}

@end
