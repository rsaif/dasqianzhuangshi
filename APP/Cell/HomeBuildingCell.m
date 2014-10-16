//
//  HomeBuildingCell.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeBuildingCell.h"

@implementation HomeBuildingCell
-(void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.image = [UIImage imageNamed:@"img_edit_data_photo"];
    self.textLabel.text = @"标题";
    self.detailTextLabel.text = @"描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述";
}

@end
