//
//  HomeBuildingCell.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeBuildingCell.h"
#import "UIImageView+WebCache.h"
#import "EntityHomelist.h"

@implementation HomeBuildingCell
-(void)layoutSubviews{
    
    
    [super layoutSubviews];
    
    self.array =(NSArray*)self.data;
    
    EntityHomelist *r = self.array[self.indexPath.row -1];
    
    self.title.text = r.title;
    
    
    self.subtitle.text = r.Detailed_addres;
    self.subtitle.numberOfLines = 2;
    self.subtitle.lineBreakMode = NSLineBreakByCharWrapping;
    
    self.picture = r.Img_url;
    self.address = r.Detailed_addres;
    self.mingzi = r.title;
    self.liulan = r.Class_list;
    
  
    
    
      [self.backimageView sd_setImageWithURL:[NSURL URLWithString:r.Img_url] placeholderImage:DefaultImage];
       // [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.art] placeholderImage:DefaultImage];

   // self.imageView.image = [UIImage imageNamed:@"img_edit_data_photo"];
    //self.textLabel.text = @"标题";
   // self.detailTextLabel.text = @"描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述";
}

@end
