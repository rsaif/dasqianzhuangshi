//
//  LearnCatViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"

@interface LearnCatViewController : ViewControllerImpl<UITableViewDelegate,UITableViewDataSource>
{
IBOutlet UITableView *mainTable;
NSInteger endSection;
NSInteger didSection;
BOOL ifOpen;
    NSMutableArray *_datalist;
}

@property (nonatomic,retain)NSMutableArray *array;


@end
