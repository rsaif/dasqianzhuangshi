//
//  LearnCatCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CGTableViewCell.h"
@interface LearnCatheaderCell : CGTableViewCell
{
};
@property(nonatomic,retain)IBOutlet UIImageView *imgStudy;
@property(nonatomic,retain)IBOutlet UILabel *Zuhangxiu;
@property(nonatomic,retain)IBOutlet UILabel *zitifengbu;
-(void)changrouup:(BOOL)up;
@end
