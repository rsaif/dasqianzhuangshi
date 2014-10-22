//
//  LearnCatCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "LearnCatheaderCell.h"

@implementation LearnCatheaderCell
-(void)layoutSubviews
{
    [super layoutSubviews];
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
}
-(void)changrouup:(BOOL)up
{
    if (up) {
        NSLog(@"up");
    }
    else
    {
        NSLog(@"dowan");
    }
}

@end
