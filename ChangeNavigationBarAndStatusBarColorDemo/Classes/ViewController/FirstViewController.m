//
//  FirstViewController.m
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/7/31.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNav];
    [self setupUI];
}

- (void)setNav {
    self.navItem.title = @"first";
    self.navigationBar.barTintColor = [UIColor cyanColor];
    self.barStyle = UIBarStyleBlack;
}

- (void)setupUI {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 30);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"click me" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction {
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}

@end
