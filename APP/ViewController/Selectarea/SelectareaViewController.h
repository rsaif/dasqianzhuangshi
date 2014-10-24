//
//  SelectareaViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectarreraCell.h"

@interface SelectareaViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,Selectarrerdelegate>
{
    __weak IBOutlet UITableView *_seltableView;
    UIButton *jilubutton;
}
@property(nonatomic,assign)BOOL isreader;


@end
