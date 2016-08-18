//
//  BaseSearchBar.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/2.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "BaseSearchBar.h"
#import "UIFont+ScaleFontCategory.h"

@implementation BaseSearchBar

-(instancetype)init
{
    if (self = [super init]) {
        [self setGeneralSetting];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setGeneralSetting];
    }
    return  self;
}

/* 设置统一条件 */
- (void)setGeneralSetting
{
    //  此处必须设置占位或文本，否则取不到相应的textfield
    self.placeholder = @"搜索";
    if([[[UIDevice currentDevice] systemVersion]floatValue ] >= 7.0){
        NSArray * subViews = [[self.subviews objectAtIndex:0] subviews];
        for (UIView *subview in subViews){
            if ([subview isKindOfClass:NSClassFromString(@"UISearchBarBackground")]){
                [subview removeFromSuperview];
                break;
            }
        }
        //  默认字体大小
        UITextField *searchField = [self valueForKey:@"_searchField"];
//        searchField.textColor = [UIColor redColor];
        searchField.font = [UIFont scaleSystemFontOfSize:14.0];
        
        [searchField setValue:[UIFont scaleSystemFontOfSize:14.0] forKeyPath:@"_placeholderLabel.font"];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
