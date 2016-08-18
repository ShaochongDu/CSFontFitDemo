//
//  BaseTableViewCell.m
//  CSFontFitDemo
//
//  Created by Shaochong Du on 16/6/13.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "UIFont+ScaleFontCategory.h"
@implementation BaseTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //  默认字体大小
        self.textLabel.font = [UIFont scaleSystemFontOfSize:17.0];
        self.detailTextLabel.font = [UIFont scaleSystemFontOfSize:17.0];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
