//
//  CGViewAnimate.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-9.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "CGViewAnimate.h"
@interface CGViewAnimate(){
    NSMutableArray *arr;
    int j;
}
@end

@implementation CGViewAnimate
-(void)awakeFromNib{
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(translate)];
    link.frameInterval = 100;
    [link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    self.clipsToBounds = YES;
}

 //Only override drawRect: if you perform custom drawing.
 //An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
     //Drawing code
//    j++;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 160, 160);
    for (int i=0; i<360; i++) {
        CGContextAddLineToPoint(context, sinf((i+j)/57.0)*160+160, cosf((i+j)/57.0)*160+160);
    }
    CGContextSetLineWidth(context, 2);
    CGContextSetRGBFillColor(context, 1, 0, 0, 1);
    CGContextStrokePath(context);
    CGAffineTransform form = CGAffineTransformTranslate(self.transform, 0, 0);
    self.transform = form;
//    if (j>360) {
//        j=0;
//    }
}
-(void)translate{
//    form = CGAffineTransformRotate(form, j++);
    self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, j++);
}

@end
