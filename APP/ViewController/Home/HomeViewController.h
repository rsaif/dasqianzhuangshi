//
//  HomeViewController.h
//  Base
//
//  Created by Justin on 14-7-17.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "CGTableView+loadView2.h"
@interface HomeViewController : ViewControllerImpl<UITableViewDelegate,UITableViewDataSource,UIView_LoadViewDelegate>{
    NSMutableArray *_dataList;
    NSMutableArray *_dataListSlide;
    __weak IBOutlet CGTableView_loadView2 *_tableView;
}
@end
