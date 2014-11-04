//
//  HomeDetailViewController.h
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"

@interface HomeDetailViewController : ViewControllerImpl<UITableViewDataSource,UITableViewDelegate>{
    
    __weak IBOutlet UITableView *_tableView;
    NSMutableArray *_datalist;
    NSMutableArray *_datalist1;
    NSMutableArray *_datalist2;
    NSMutableArray *_datalist3;
}
@property(nonatomic,strong)NSString *picture;
@property(nonatomic,weak)NSString *address;
@property(nonatomic,weak)NSString *mingzi;
@property(nonatomic,weak)NSString *liulan;
@end
