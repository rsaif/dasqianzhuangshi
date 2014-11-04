//
//  LearnBuildingCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14/11/2.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGTableViewCell.h"
#import "CGLabel.h"
@interface LearnBuildingCell : CGTableViewCell
{
}
@property(nonatomic,weak)IBOutlet UILabel *title;
@property(nonatomic,weak)IBOutlet CGLabel *subtitle;
@property(nonatomic,weak)IBOutlet UIImageView *backimageView;
@property(nonatomic,strong)NSArray *array;
@property(nonatomic,strong)NSString *stid;
@end
