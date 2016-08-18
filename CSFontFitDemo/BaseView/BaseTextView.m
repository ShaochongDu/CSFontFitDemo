//
//  BaseTextView.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/2.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "BaseTextView.h"
#import "UIFont+ScaleFontCategory.h"

@implementation BaseTextView

-(instancetype)init
{
    if (self = [super init]) {
        [self setGeneralSetting];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setGeneralSetting];
    }
    return self;
}

/* 设置统一条件 */
- (void)setGeneralSetting
{
    //  默认字体大小
    self.font = [UIFont scaleSystemFontOfSize:12.0];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
