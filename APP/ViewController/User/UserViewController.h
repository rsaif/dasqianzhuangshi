//
//  SetController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet  UITableView *tableView;
    NSMutableArray *mutablearry;
}
@property(nonatomic,retain)IBOutlet UIImageView *pictuimageView;
@property(nonatomic,retain)IBOutlet UILabel *phonelabel;

@end
