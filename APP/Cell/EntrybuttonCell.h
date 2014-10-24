//
//  EntrybuttonCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntrybuttonCell : UITableViewCell
{
}
@property(nonatomic,weak)IBOutlet UIButton *btton;
@property(nonatomic,weak)IBOutlet UIButton *forget;
-(IBAction)button:(UIButton*)sender;

@end
