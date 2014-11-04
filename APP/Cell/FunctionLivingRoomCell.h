//
//  FunctionLivingRoomCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGTableViewCell.h"
@class FunctionLivingRoomCell,Entitydesigner;
@interface FunctionLivingRoomCell : CGTableViewCell
{
}
@property(nonatomic,weak)IBOutlet UIImageView *pictureimage;
@property(nonatomic,weak)IBOutlet UILabel *minglabel;
@property(nonatomic,weak)IBOutlet UILabel *style;
@property(nonatomic,weak)IBOutlet UILabel *shejishilinian;
@property(nonatomic,weak)NSArray *array;


@end
