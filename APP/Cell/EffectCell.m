//
//  EffectCell.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EffectCell.h"
#import "EntityEffect.h"
#import "UIImageView+WebCache.h"

@implementation EffectCell

-(void)layoutSubviews{
    [super layoutSubviews];
    EntityEffect *e = self.data;
    [_imgView setImageWithURL:[NSURL URLWithString:e.url] placeholderImage:DefaultImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
        if (image) {
            _imgView.image = image;
            CGRect frame = _imgView.frame;
            frame.size.width = 100;
            frame.size.height = image.size.height*_imgView.frame.size.width/image.size.width;
            _imgView.frame = frame;
            e.width = [NSString stringWithFormat:@"%f",frame.size.width];
            e.height = [NSString stringWithFormat:@"%f",frame.size.height];
            NSLog(@"%@,%@",e.width,e.height);
            if (_delegate&&[_delegate respondsToSelector:@selector(updateCell:)]) {
                [_delegate updateCell:self];
                e.isUpdated = @"YES";
            }
        }
    }];
}

@end
