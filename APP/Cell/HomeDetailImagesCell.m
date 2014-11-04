//
//  HomeDetailImagesCell.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeDetailImagesCell.h"
#import "EntitiyVillageFloor.h"
#import "UIImageView+WebCache.h"

@implementation HomeDetailImagesCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)setData:(NSArray*)data
{
    for (EntitiyVillageFloor *s in data) {
        UIImageView *bacimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0*[data count]/320+5, 0,30 ,60 )];
        [bacimageView sd_setImageWithURL:[NSURL URLWithString:s.Thumb_path] placeholderImage:DefaultImage];
        [self.scrollview addSubview:bacimageView];
    }
}

@end
