//
//  UITextView+FontCategory.m
//  DeviceInfo
//
//  Created by Shaochong Du on 16/5/31.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "UITextView+FontCategory.h"

@implementation UITextView (FontCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UITextView") swizzleSelector:@selector(initWithCoder:) withSwizzledSelector:@selector(myInitWithCoder:)];
        //        [objc_getClass("UITextView") swizzleSelector:@selector(willMoveToSuperview:) withSwizzledSelector:@selector(myWillMoveToSuperview:)];
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
    self.font = [UIFont systemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:self.font.pointSize]];
}


@end
