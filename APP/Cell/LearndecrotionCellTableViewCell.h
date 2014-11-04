//
//  LearndecrotionCellTableViewCell.h
//  Zhuangshi
//
//  Created by xhpmac on 14/11/2.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LearndecrotionCellTableViewCell,Entitylearnshow;
@protocol HomeSliderCellDelegate <NSObject>
-(void)clickedByHomeSlider:(LearndecrotionCellTableViewCell *)sender atIndex:(NSInteger)index data:(Entitylearnshow *)data;
@end
#import "CGTableViewCell.h"
@interface LearndecrotionCellTableViewCell : CGTableViewCell<UIScrollViewDelegate>
{
    __weak IBOutlet UIPageControl *_pageControl;
    __weak IBOutlet UIScrollView *_scrollView;
    dispatch_source_t timer;

}
@property(nonatomic,strong)NSArray *dataList;
@property(nonatomic,assign)id<HomeSliderCellDelegate>delegate;
@end
