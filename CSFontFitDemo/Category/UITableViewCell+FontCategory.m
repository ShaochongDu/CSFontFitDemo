//
//  UITableViewCell+FontCategory.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/14.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "UITableViewCell+FontCategory.h"

@implementation UITableViewCell (FontCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UITableViewCell") swizzleSelector:@selector(initWithCoder:) withSwizzledSelector:@selector(myInitWithCoder:)];
        //        [objc_getClass("UITableViewCell") swizzleSelector:@selector(willMoveToSuperview:) withSwizzledSelector:@selector(myWillMoveToSuperview:)];
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
    CGFloat fontSize = [CSPlistTool getScaleFontWithOriginFontSize:self.textLabel.font.pointSize];
    self.textLabel.font = [UIFont systemFontOfSize:fontSize];
    self.detailTextLabel.font = [UIFont systemFontOfSize:fontSize];
}


@end
