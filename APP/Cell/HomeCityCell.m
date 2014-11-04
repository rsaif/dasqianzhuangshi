//
//  HomeCityCell.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeCityCell.h"
#import "EntiyHomebuliding.h"

@implementation HomeCityCell
-(void)setData:(NSArray*)data
{
    EntiyHomebuliding *building = data[self.indexPath.row];
    self.detailTextLabel.text = building.title;
    NSLog(@"--%@---",building.title);
    
}
-(void)layoutSubviews{
   [super layoutSubviews];
    
    
    
  /*  EntiyHomebuliding *builiding = self.data[indexPath.row];
    cell.detailTextLabel.text = builiding.title;
    self.textLabel.text = @"标题";
    self.detailTextLabel.text = @"123456";*/
}

@end
