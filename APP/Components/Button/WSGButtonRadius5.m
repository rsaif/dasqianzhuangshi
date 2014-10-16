//
//  WSGButtonRadius5.m
//  Yijia
//
//  Created by wang shuguan on 14-2-28.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "WSGButtonRadius5.h"

@implementation WSGButtonRadius5

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self Init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self Init];
    }
    return self;
}
-(void)Init{
    
    self.layer.cornerRadius = 5.0;  //设置layer圆角半径
    self.layer.masksToBounds = YES;  //隐藏边界
}
-(void)changeFrameByFollowedFrame:(CGRect)frame andOffsize:(CGSize)size{
    CGRect f = CGRectMake(frame.origin.x+size.width, frame.origin.y+frame.size.height+size.height, self.frame.size.width, self.frame.size.height);
    self.frame = f;
}

@end
