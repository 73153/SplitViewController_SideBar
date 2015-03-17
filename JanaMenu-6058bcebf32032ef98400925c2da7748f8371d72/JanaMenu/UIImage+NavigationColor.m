//
//  UIImage+NavigationColor.m
//  Fiora
//
//  Created by tinvukhac on 8/20/14.
//  Copyright (c) 2014 khacvv0451. All rights reserved.
//

#import "UIImage+NavigationColor.h"

@implementation UIImage (NavigationColor)
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
