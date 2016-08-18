//
//  UIButton+FontCategory.m
//  DeviceInfo
//
//  Created by Shaochong Du on 16/5/31.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "UIButton+FontCategory.h"

@implementation UIButton (FontCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UIButton") swizzleSelector:@selector(initWithCoder:) withSwizzledSelector:@selector(myInitWithCoder:)];
        //        [objc_getClass("UIButton") swizzleSelector:@selector(willMoveToSuperview:) withSwizzledSelector:@selector(myWillMoveToSuperview:)];
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
    self.titleLabel.font = [UIFont systemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:self.titleLabel.font.pointSize]];
}

@end
