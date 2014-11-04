//
//  LearnBuildingCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14/11/2.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "LearnBuildingCell.h"
#import "UIImageView+WebCache.h"
#import "Entitylearnlisttable.h"
@implementation LearnBuildingCell

-(void)layoutSubviews{
    
    
    [super layoutSubviews];
    
    self.array =(NSArray*)self.data;
    
    Entitylearnlisttable *r = self.array[self.indexPath.row -1];
    
    self.title.text = r.title;
    
    self.stid = r.Id;
    self.subtitle.text = r.Zaihaiyao;
   
    
    [self.backimageView sd_setImageWithURL:[NSURL URLWithString:r.Img_url] placeholderImage:DefaultImage];
    // [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.art] placeholderImage:DefaultImage];
    
    // self.imageView.image = [UIImage imageNamed:@"img_edit_data_photo"];
    //self.textLabel.text = @"标题";
    // self.detailTextLabel.text = @"描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述";
}
@end
