//
//  ChangePasswordCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-27.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ChangePasswordCell.h"

@implementation ChangePasswordCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)layoutSubviews
{
    self.wenzitext.keyboardType = UIKeyboardTypePhonePad;
}
@end
