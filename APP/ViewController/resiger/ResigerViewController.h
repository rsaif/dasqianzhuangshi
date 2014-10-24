//
//  ResigerViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-24.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResigerViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *_resitable;
}

@end
