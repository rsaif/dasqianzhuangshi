//
//  ChangePasswordViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-27.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChangePasswordViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *_ChangeTable;
}

@end
