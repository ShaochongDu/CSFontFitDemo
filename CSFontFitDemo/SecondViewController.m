//
//  SecondViewController.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/1.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "SecondViewController.h"
#import "BaseTableViewCell.h"
#import "UIFont+ScaleFontCategory.h"

@interface SecondViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 30;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section % 4 == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FirstCell"];
        
        return cell;
    } else if (indexPath.section % 4 == 1) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondCell"];
        
        return cell;
    } else if (indexPath.section % 4 == 2) {
        static NSString *cellIdentify = @"thirdCell";
        BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        if (!cell) {
            cell = [[BaseTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify];
        }
        //  基类
        cell.textLabel.text = @"谷歌被批偏袒希拉里 企业不能有政治立场？";
        cell.detailTextLabel.text = @"揭秘官员朋友圈";
        return cell;
    }
    static NSString *cellIdentify = @"forthCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
    }
    //  默认没有设置label字体  会使用系统默认字体大小
    cell.textLabel.text = @"中国儿童比印度少1.5亿 谁将掌控未来？";
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section % 4 == 0) {
        return 80.0;
    } else if (indexPath.section % 4 == 1) {
        return 60.0;
    } else if (indexPath.section % 4 == 2) {
        return 60.0;
    }
    return 44.0;
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
