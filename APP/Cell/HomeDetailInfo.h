//
//  HomeDetailInfo.h
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "CGTableViewCell.h"
#import "HomeDetailViewController.h"
#import "UIImageView+WebCache.h"
@interface HomeDetailInfo : CGTableViewCell{
    
}
@property(nonatomic,weak)IBOutlet UIImageView *picture;
@property(nonatomic,weak)IBOutlet UILabel *mingzi;
@property(nonatomic,weak)IBOutlet UILabel *address;
@property(nonatomic,weak)IBOutlet UILabel *liulan;
@property(nonatomic,strong)HomeDetailViewController *detail;


@end
