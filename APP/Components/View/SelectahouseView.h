//
//  DrawingView.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectahouseView : UIView<UITableViewDelegate,UITableViewDataSource>
{
  
    
    __weak IBOutlet UITableView *_selectableView;
    
}

@end
