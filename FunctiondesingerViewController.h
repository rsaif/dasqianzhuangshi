//
//  FunctiondesingerViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14/11/3.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerImpl.h"
#import "CGTableView+loadView2.h"
#import "FunctiondesingerDetailViewController.h"
@interface FunctiondesingerViewController : ViewControllerImpl <UITableViewDelegate,UITableViewDataSource,UIView_LoadViewDelegate>{
    IBOutlet CGTableView_loadView2 *_tableView;
    NSMutableArray * _dataList;
   
}
@property(nonatomic,weak)FunctiondesingerDetailViewController *detail;

@end
