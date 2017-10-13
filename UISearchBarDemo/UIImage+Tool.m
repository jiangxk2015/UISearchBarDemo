//
//  UIImage+Tool.m
//  Demo
//
//  Created by xk jiang on 2017/10/10.
//  Copyright © 2017年 xk jiang. All rights reserved.
//

#import "UIImage+Tool.h"

@implementation UIImage (Tool)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
