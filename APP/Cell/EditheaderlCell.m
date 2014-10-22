//
//  EditheaderCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EditheaderlCell.h"

@implementation EditheaderlCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.backimageView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
