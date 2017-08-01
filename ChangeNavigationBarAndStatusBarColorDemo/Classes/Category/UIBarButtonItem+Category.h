//
//  UIBarButtonItem+Category.h
//  ChangeNavigationBarAndStatusBarColorDemo
//
//  Created by zyx on 17/8/1.
//  Copyright © 2017年 其妙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Category)

+ (UIBarButtonItem *)createWithTitle:(NSString *)title titleColor:(UIColor *)titleColor action:(void(^)(UIButton *button))action;

+ (UIBarButtonItem *)createWithImage:(UIImage *)image action:(void(^)(UIButton *button))action;

@end
