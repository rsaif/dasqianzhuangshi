//
//  LearnShowViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "CGTableView+loadView2.h"

@interface LearnShowViewController : ViewControllerImpl<UITableViewDelegate,UITableViewDataSource,UIView_LoadViewDelegate>{
    NSMutableArray *_dataList;
    NSMutableArray *_dataListSlide;
    __weak IBOutlet CGTableView_loadView2 *_tableView;
}

@end
