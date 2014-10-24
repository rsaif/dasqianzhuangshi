//
//  SelectarreraCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Selectarrerdelegate <NSObject>

-(void)Sellectarrera:(NSIndexPath*)indexpatch withbutton:(UIButton*)buttn;

@end

@interface SelectarreraCell : UITableViewCell
{
}
@property(nonatomic,weak)IBOutlet UIButton *anniubtn;
@property(nonatomic,weak)NSIndexPath *indexpach;
@property(nonatomic,weak)IBOutlet UILabel *minglabel;
@property(nonatomic,assign)BOOL isreader;
@property(nonatomic,weak)id<Selectarrerdelegate> delegate;
-(IBAction)bttn:(id)sender;

@end
