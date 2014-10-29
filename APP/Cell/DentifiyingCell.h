//
//  DentifiyingCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-27.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DentifiyingCell : UITableViewCell
{
}
@property(nonatomic,weak)IBOutlet UITextField *yanZhengma;
@property(nonatomic,weak)IBOutlet UILabel *ChongxinHuoqu;
-(IBAction)button:(id)sender;


@end
