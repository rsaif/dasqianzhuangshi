//
//  SifitingViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-27.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectarreraCell.h"
@interface SifitingViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,Selectarrerdelegate>
{
    __weak IBOutlet UITableView *_SifitableView;
}

@end
