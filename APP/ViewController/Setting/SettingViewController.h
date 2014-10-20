//
//  InformationController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *tableview;
}

@end
