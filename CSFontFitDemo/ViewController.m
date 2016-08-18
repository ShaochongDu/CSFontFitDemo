//
//  ViewController.m
//  DeviceInfo
//
//  Created by Lee on 16/1/25.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "ViewController.h"
#import "DeviceHelper.h"
#import "UIFont+ScaleFontCategory.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UISearchBar *mySearchBar;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myBn;
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [DeviceHelper getDeviceInfo];
    
//    NSString *phoneModel =[DeviceHelper getCurrentDeviceModel];
//    NSLog(@"手机型号%@", phoneModel);
//    NSLog(@"%lu", (unsigned long)[DeviceHelper currentResolution]);
//    
//    NSLog(@"电池余量%f", [DeviceHelper getBatteryQuantity]);
//    
//    NSLog(@"可用内存%@", [DeviceHelper getAvailableMemorySize]);
//    NSLog(@"总内存%@", [DeviceHelper getTotalMemorySize]);
//    
//    NSLog(@"总磁盘空间%@", [DeviceHelper getTotalDiskSize]);
//    NSLog(@"可用磁盘空间%@", [DeviceHelper getAvailableDiskSize]);
//    
//    NSLog(@"UUID%@", [DeviceHelper getUDID]);
    
    /**
     *  1、使用XIB时，无需其他设置
     *  默认执行各个控件分类中initWithCoder:方法，并读取FontSizeScale.plist文件设置字体大小
     */
    
    
    /**
     *  2、若控件使用代码创建，则需要手动调用设置字体方法进行设置
     *  若想使用默认值，建议使用base基类，基类中已经对控件设置了默认字体，同时读取FontSizeScale.plist配置文件
     */
//    [self setViewsFont];
}

- (IBAction)tapGesture:(id)sender {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
- (void)setViewsFont
{
    /**
     *  通过代码设置字体大小  优先级大于通过runtime设置默认字体
     *  因为runtime设置字体使用load方法
     */
    UITextField *searchField = [self.mySearchBar valueForKey:@"_searchField"];
    searchField.textColor = [UIColor blueColor];
    [searchField setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    //  系统默认字体样式
    searchField.font = [UIFont scaleSystemFontOfSize:10];
    
    //  修改当前字体大小
    self.myTextField.font = [UIFont scaleSystemFontOfSize:10];
    self.myTextField.font = [self.myTextField.font scalefontWithSize:8];
    
    //  斜体带中文
    self.myTextView.font = [UIFont scaleChineseItalicSystemFontOfSize:10];
    
    //  获取系统字体
    for(NSString *familyName in [UIFont familyNames]) {
        NSLog(@"-------------familyName = %@-------------", familyName);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"\tfontName = %@", fontName);
        }
        NSLog(@"\n");
    }
    //  自定义字体样式
    self.myLabel.font = [UIFont scaleFontWithName:@"ArialHebrew" size:10];
    
    //  粗体样式
    self.myBn.titleLabel.font = [UIFont scaleBoldSystemFontOfSize:15];
}



@end
