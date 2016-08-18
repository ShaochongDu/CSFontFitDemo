//
//  CSPlistTool.h
//  CSReadPlistDemo
//
//  Created by Shaochong Du on 16/5/12.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CSPlistTool : NSObject

/**
 *  加载分组类型的plist文件
 *
 *  @param plistName plist名称
 *
 *  @return 数组数据
 */
+ (NSMutableArray *)loadGroupPlistFile:(NSString *)plistName;

/**
 *  加载单个分组plist文件
 *
 *  @param plistName plist名称
 *
 *  @return plist转换后数据
 */
+ (NSMutableArray *)loadItemPlistFile:(NSString *)plistName;

/**
 *  根据当前设备获取相应字体大小
 *
 *  @param originFont 原始字体大小
 *
 *  @return 缩放后字体大小值
 */
+ (CGFloat)getScaleFontWithOriginFontSize:(CGFloat)originFont;

@end
