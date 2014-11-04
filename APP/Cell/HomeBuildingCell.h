//
//  HomeBuildingCell.h
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "CGTableViewCell.h"

@interface HomeBuildingCell : CGTableViewCell
{
}
@property(nonatomic,weak)IBOutlet UILabel *title;
@property(nonatomic,weak)IBOutlet UILabel *subtitle;
@property(nonatomic,weak)IBOutlet UIImageView *backimageView;
@property(nonatomic,strong)NSArray *array;



@property(nonatomic,weak)NSString *mingzi;
@property(nonatomic,weak)NSString *picture;
@property(nonatomic,weak)NSString *address;
@property(nonatomic,weak)NSString *liulan;



@end
