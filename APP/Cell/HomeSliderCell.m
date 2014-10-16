//
//  HomeSliderCell.m
//  YijiaO2O
//
//  Created by wang shuguan on 14-3-14.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeSliderCell.h"
#import "UIImageView+WebCache.h"
#import "EntityHomeSlide.h"
@implementation HomeSliderCell

-(void)Init{
    [super Init];
    dispatch_after(DISPATCH_TIME_NOW,dispatch_get_main_queue(), ^{
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(touchedAction)];
        [_scrollView addGestureRecognizer:tap];
    });
}

#pragma mark - delegate for scrollView
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    int page = ceilf(scrollView.contentOffset.x/scrollView.frame.size.width);
    _pageControl.currentPage = page;
}
#pragma mark - custom methods
-(void)setDataList:(NSArray *)dataList{
    _dataList = dataList;
    for (UIView *v in _scrollView.subviews) {
        [v removeFromSuperview];
    }
    int i=0;
    for (EntityHomeSlide *s in dataList) {
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width*i++, 0, self.frame.size.width, self.frame.size.height)];
        [img setImageWithURL:[NSURL URLWithString:s.Img] placeholderImage:DefaultImage];
        [_scrollView addSubview:img];
    }
    _scrollView.contentSize = CGSizeMake(i*self.frame.size.width, self.frame.size.height);
    _pageControl.numberOfPages = i;
    if (dataList.count>1) {
        
        dispatch_after(DISPATCH_TIME_NOW, dispatch_get_main_queue(), ^{
            dispatch_queue_t queue = dispatch_queue_create("autoLoop", 0);
            timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
            dispatch_source_set_timer(timer, dispatch_time(DISPATCH_TIME_NOW, 0), 3 * NSEC_PER_SEC, 2* NSEC_PER_SEC);
            dispatch_source_set_event_handler(timer, ^{
                dispatch_after(DISPATCH_TIME_NOW, dispatch_get_main_queue(), ^{
                    int page = ceilf(_scrollView.contentOffset.x/_scrollView.frame.size.width);
                    page ++;
                    page = page % _dataList.count;
                    float x = page * _scrollView.frame.size.width;
                    [_scrollView scrollRectToVisible:CGRectMake(x, 0, _scrollView.frame.size.width, _scrollView.frame.size.height) animated:YES];
                    _pageControl.currentPage = page;
                    
                });
            });
            dispatch_resume(timer);
        });
    }
}
-(void)touchedAction{
    if (_delegate && [_delegate respondsToSelector:@selector(clickedByHomeSlider:atIndex:data:)]) {
        [_delegate clickedByHomeSlider:self atIndex:_pageControl.currentPage data:_dataList[_pageControl.currentPage]];
    }
}
@end
