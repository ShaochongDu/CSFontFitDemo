//
//  UILabel+DXFont.m
//  CPSActivity
//
//  Created by mlf on 16/5/23.
//  Copyright © 2016年 mlf. All rights reserved.
//

#import "UILabel+FontCategory.h"

@implementation UILabel (FontCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("UILabel") swizzleSelector:@selector(initWithCoder:) withSwizzledSelector:@selector(myInitWithCoder:)];
//        [objc_getClass("UILabel") swizzleSelector:@selector(willMoveToSuperview:) withSwizzledSelector:@selector(myWillMoveToSuperview:)];
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
//    //  对应FontSizeScale.plist配置文件
    self.font = [UIFont systemFontOfSize:[CSPlistTool getScaleFontWithOriginFontSize:self.font.pointSize]];
}

@end
