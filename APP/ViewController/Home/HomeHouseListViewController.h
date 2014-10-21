//
//  HomeHouseListViewController.h
//  Zhuangshi
//
//  Created by rsaif on 14/10/20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "CGTableView+loadView2.h"

@interface HomeHouseListViewController : ViewControllerImpl<UITableViewDelegate,UITableViewDataSource,UIView_LoadViewDelegate>{
    __weak IBOutlet CGTableView_loadView2 *_tableView;
    
    NSMutableArray *_dataList;
}

@end
