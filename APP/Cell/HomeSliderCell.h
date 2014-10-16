//
//  HomeSliderCell.h
//  YijiaO2O
//
//  Created by wang shuguan on 14-3-14.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//
@class HomeSliderCell,EntityHomeSlide;
@protocol HomeSliderCellDelegate <NSObject>
-(void)clickedByHomeSlider:(HomeSliderCell *)sender atIndex:(NSInteger)index data:(EntityHomeSlide *)data;
@end
#import "CGTableViewCell.h"

@interface HomeSliderCell : CGTableViewCell<UIScrollViewDelegate>{
    
    __weak IBOutlet UIPageControl *_pageControl;
    __weak IBOutlet UIScrollView *_scrollView;
    dispatch_source_t timer;
}
@property(nonatomic,strong)NSArray *dataList;
@property(nonatomic,assign)id<HomeSliderCellDelegate>delegate;
@end
