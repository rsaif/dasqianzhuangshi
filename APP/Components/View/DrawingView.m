//
//  DrawingView.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
     
        self.backgroundColor = [UIColor redColor];
                
        if (_scrollview.tag == 101) {
            _scrollview.backgroundColor = [UIColor redColor];
        }else if (_scrollview.tag == 102)
        {
            _scrollview.backgroundColor = [UIColor grayColor];
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
