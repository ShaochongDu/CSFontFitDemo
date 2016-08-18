//
//  UISearchBar+FontCategory.m
//  DeviceInfo
//
//  Created by Shaochong Du on 16/5/31.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "UISearchBar+FontCategory.h"

@implementation UISearchBar (FontCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UISearchBar") swizzleSelector:@selector(initWithCoder:) withSwizzledSelector:@selector(myInitWithCoder:)];
        //        [objc_getClass("UISearchBar") swizzleSelector:@selector(willMoveToSuperview:) withSwizzledSelector:@selector(myWillMoveToSuperview:)];
    });
}

- (id)myInitWithCoder:(NSCoder *)aDecoder
{
    [self myInitWithCoder:aDecoder];
    [self sizeFontFit];
    
    return self;
}

- (void)myWillMoveToSuperview:(nullable UIView *)newSuperview
{
    [self myWillMoveToSuperview:newSuperview];
    [self sizeFontFit];
}

- (void)sizeFontFit
{
    //  对应FontSizeScale.plist配置文件
    UITextField *searchField = [self valueForKey:@"_searchField"];
//    searchField.textColor = [UIColor blueColor];
//    [searchField setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    
//    CGFloat fontSize = searchField.font.pointSize;
//    NSInteger device = [DeviceHelper currentResolution];
//    NSString *str = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"FontSizeScale.plist"];
//    NSArray *plistArray = [NSArray arrayWithContentsOfFile:str];
//    for (NSDictionary *itemDic in plistArray) {
//        if ([itemDic[@"UIDeviceResolution"] integerValue] == device) {
//            fontSize *= [itemDic[@"FontScale"] floatValue];
//            break;
//        }
//    }
    searchField.font = [UIFont systemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:searchField.font.pointSize]];
}

@end
