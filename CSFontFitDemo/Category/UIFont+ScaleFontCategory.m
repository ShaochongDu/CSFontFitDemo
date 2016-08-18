//
//  UIFont+ScaleFontCategory.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/1.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "UIFont+ScaleFontCategory.h"
#import "CSPlistTool.h"

@implementation UIFont (ScaleFontCategory)

- (UIFont *)scalefontWithSize:(CGFloat)fontSize
{
    return [self fontWithSize:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

+ (UIFont *)scaleSystemFontOfSize:(CGFloat)fontSize
{
    return [self systemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

+ (UIFont *)scaleBoldSystemFontOfSize:(CGFloat)fontSize
{
    return [self boldSystemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

+ (UIFont *)scaleItalicSystemFontOfSize:(CGFloat)fontSize
{
    return [self italicSystemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

+ (UIFont *)scaleChineseItalicSystemFontOfSize:(CGFloat)fontSize
{
    //  设置反射。倾斜15度。
    CGAffineTransform matrix = CGAffineTransformMake(1, 0, tanf(15 * (CGFloat)M_PI / 180), 1, 0, 0);
    //  取得系统字符并设置反射
    UIFontDescriptor *desc = [ UIFontDescriptor fontDescriptorWithName:[self scaleSystemFontOfSize:fontSize].fontName matrix:matrix];
    
    return [UIFont fontWithDescriptor:desc size:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

+ (UIFont *)scaleFontWithName:(NSString *)fontName size:(CGFloat)fontSize
{
    return [self fontWithName:fontName size:[CSPlistTool getScaleFontWithOriginFontSize:fontSize]];
}

@end
