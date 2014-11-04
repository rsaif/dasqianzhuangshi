//
//  EntryViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntryViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *_mantable;

}


@end
