//
//  UIBarButtonItem+Category.m
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/8/1.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import "UIBarButtonItem+Category.h"

@implementation UIBarButtonItem (Category)

+ (UIBarButtonItem *)createWithTitle:(NSString *)title titleColor:(UIColor *)titleColor action:(void (^)(UIButton *))action {
    return [UIBarButtonItem createWithTitle:title titleColor:titleColor image:nil action:action];
}

+ (UIBarButtonItem *)createWithImage:(UIImage *)image action:(void (^)(UIButton *))action {
    return [UIBarButtonItem createWithTitle:nil titleColor:nil image:image action:action];
}

+ (UIBarButtonItem *)createWithTitle:(NSString *)title titleColor:(UIColor *)titleColor image:(UIImage *)image action:(void(^)(UIButton *))action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return item;
}

@end
