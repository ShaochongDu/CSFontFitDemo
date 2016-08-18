//
//  ThirdViewController.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/2.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "ThirdViewController.h"
#import "BaseLabel.h"
#import "BaseButton.h"
#import "BaseTextField.h"
#import "BaseTextView.h"
#import "BaseSearchBar.h"
#import "UIFont+ScaleFontCategory.h"

@interface ThirdViewController ()
@property (nonatomic, strong)BaseSearchBar *searchBar;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setViewsFont];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
- (void)setViewsFont
{
    /**
     *  通过基类继承方式，创建相应控件，基类设置了默认字体大小，防止单独创建控件时，手动设置font字体
     */
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    BaseLabel *label = [[BaseLabel alloc] initWithFrame:CGRectMake(10, 80, screenWidth - 10*2, 25)];
    label.text = @"我是一个 BaseLabel";
    label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:label];
    
    BaseButton *btn = [BaseButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 120, screenWidth - 10*2, 30);
    [btn setTitle:@"我是一个 BaseButton" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:btn];
    
    BaseTextField *textField = [[BaseTextField alloc] initWithFrame:CGRectMake(10, 160, screenWidth - 10*2, 30)];
    textField.text = @"我是一个 BaseTextField";
    textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:textField];
    
    BaseTextView *textView = [[BaseTextView alloc] initWithFrame:CGRectMake(10, 200, screenWidth - 10*2, 30)];
    textView.text = @"我是一个 UITextView";
    textView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:textView];
    
    _searchBar = [[BaseSearchBar alloc] initWithFrame:CGRectMake(10, 240, screenWidth - 10*2, 44)];
    _searchBar.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_searchBar];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
