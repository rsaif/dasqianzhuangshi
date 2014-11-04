//
//  HomeDetailInfo.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeDetailInfo.h"

@implementation HomeDetailInfo

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews
{
    [super layoutSubviews];
    HomeDetailViewController *detail = [[HomeDetailViewController alloc] init];
       self.mingzi.text = self.detail.mingzi;
     self.address.text = self.detail.address;
    self.liulan.text = self.detail.liulan;
  //  [self.picture sd_setImageWithURL:[NSURL URLWithString:self.detail.picture] placeholderImage:DefaultImage];
    
    
}

@end
