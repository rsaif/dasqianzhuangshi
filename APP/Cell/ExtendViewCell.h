//
//  ExtendViewCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExtendViewCell : UITableViewCell
{
}
@property(nonatomic,retain)IBOutlet UIImageView *backimageView;
@property(nonatomic,retain)IBOutlet UIButton *listbutton;
-(IBAction)button:(id)sender;

@end
