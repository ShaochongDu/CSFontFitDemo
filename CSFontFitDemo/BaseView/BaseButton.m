//
//  BaseButton.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/2.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "BaseButton.h"
#import "UIFont+ScaleFontCategory.h"

@implementation BaseButton

+(instancetype)buttonWithType:(UIButtonType)buttonType
{
    UIButton *btn = [super buttonWithType:buttonType];
    btn.titleLabel.font = [UIFont scaleBoldSystemFontOfSize:18];
    
    return btn;
}

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
    self.titleLabel.font = [UIFont scaleSystemFontOfSize:18.0];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
