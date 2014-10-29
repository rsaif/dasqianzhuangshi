//
//  DrawViewingViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-21.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "DrawViewingViewController.h"

@interface DrawViewingViewController ()

@end

@implementation DrawViewingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    number = 0;
    
    
    
    self.view.backgroundColor = [UIColor blackColor];
    
    self.qiezilabel.textColor = [UIColor whiteColor];
    self.mingzilabel.textColor = [UIColor whiteColor];
    
      _data = [[NSMutableArray alloc] initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil];
  
    
    _scrollview.contentSize = CGSizeMake(320*[_data count],0);
    _scrollview.delegate = self;
    _scrollview.pagingEnabled = YES;
    
  
            for (int i = 0;i <[_data count];i++) {
        
        
                _zoomScrollView = [[ZHfangdaSCrollview alloc]init];
               
                CGRect frame = _scrollview.frame;
                frame.origin.x = frame.size.width * i;
                frame.origin.y = 0;
                _zoomScrollView.frame = frame;
                _zoomScrollView.imageView.image = [UIImage imageNamed:[_data objectAtIndex:i]];
                [_scrollview addSubview:_zoomScrollView];
            }
          
    
  
  
    }





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == _scrollview) {
        number = scrollView.contentOffset.x/scrollView.frame.size.width;
        self.qiezilabel.text = [NSString stringWithFormat:@"%d",number];
    }
    
     }

@end
