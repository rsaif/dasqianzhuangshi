//
//  HomeCityViewController.h
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "CGTableView+loadView2.h"
@interface HomeCityViewController : ViewControllerImpl<UITableViewDelegate,UITableViewDataSource,UIView_LoadViewDelegate>{
    NSMutableArray *_dataList;
    __weak IBOutlet CGTableView_loadView2 *_tableView;
}

@end
