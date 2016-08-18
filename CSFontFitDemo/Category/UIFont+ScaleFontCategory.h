//
//  UIFont+ScaleFontCategory.h
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/1.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//
/**
 *  读取配置文件设置当前字体大小
 *
 */
#import <UIKit/UIKit.h>

@interface UIFont (ScaleFontCategory)

- (UIFont *)scalefontWithSize:(CGFloat)fontSize;
+ (UIFont *)scaleSystemFontOfSize:(CGFloat)fontSize;
+ (UIFont *)scaleBoldSystemFontOfSize:(CGFloat)fontSize;
+ (UIFont *)scaleItalicSystemFontOfSize:(CGFloat)fontSize;
/**
 *  支持中文斜体
 *
 *  @param fontSize 字体大小
 *
 *  @return UIFont
 */
+ (UIFont *)scaleChineseItalicSystemFontOfSize:(CGFloat)fontSize;

+ (UIFont *)scaleFontWithName:(NSString *)fontName size:(CGFloat)fontSize;

@end
