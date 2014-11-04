//
//  FunctionLivingRoomCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "FunctionLivingRoomCell.h"
#import "UIImageView+WebCache.h"
#import "Entitydesigner.h"
@implementation FunctionLivingRoomCell

-(void)layoutSubviews{
    
    
    [super layoutSubviews];
    
    self.array =(NSArray*)self.data;
   
    
   // Entitydesigner *r = self.array[self.indexPath.row];
   /* self.minglabel.text = r.title;
    self.style.text = r.Zy_style;
    
       
    
    [self.pictureimage sd_setImageWithURL:[NSURL URLWithString:r.Img_url] placeholderImage:DefaultImage];*/
    // [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.art] placeholderImage:DefaultImage];
    
    // self.imageView.image = [UIImage imageNamed:@"img_edit_data_photo"];
    //self.textLabel.text = @"标题";
    // self.detailTextLabel.text = @"描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述";
}
-(void)setData:(NSArray*)data
{
    
    for (Entitydesigner *s in data) {
      
        
    
    
    
     self.minglabel.text = s.title;
     self.style.text = s.Zy_ln;
        self.shejishilinian.text = s.Zy_style;
     
     
     
     [self.pictureimage sd_setImageWithURL:[NSURL URLWithString:s.Img_url] placeholderImage:DefaultImage];
    }
    // [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.art] placeholderImage:DefaultImage];
}

@end
