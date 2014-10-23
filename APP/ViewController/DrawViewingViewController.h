//
//  DrawViewingViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DrawViewingViewController : UIViewController<UIScrollViewDelegate>
{
    __weak IBOutlet UIScrollView *_scrollview;
    UIScrollView *_slicrollview;
    NSMutableArray *_data;
    NSMutableArray *_lala;
    UIView *markView;
     UIImageView *xxx;
      CGRect imgRect;
    int number;
    
   
    UIImage *imge;
}
@property(nonatomic,weak)IBOutlet UILabel *qiezilabel;
@property(nonatomic,weak)IBOutlet UILabel *mingzilabel;

@end
