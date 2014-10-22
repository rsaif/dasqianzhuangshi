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
   // _slicrollview.delegate = self;
    
  //  _slicrollview.backgroundColor = [UIColor blackColor];
    
    markView = [[UIView alloc] initWithFrame:_slicrollview.frame];
    markView.backgroundColor = [UIColor clearColor];
    markView.alpha = 0;
    imgRect = _slicrollview.frame;
    //[_slicrollview addSubview:markView];
  
  
    
      _data = [[NSMutableArray alloc] initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg", nil];
  
    
    _scrollview.contentSize = CGSizeMake(320*[_data count],0);
    _scrollview.delegate = self;
    _scrollview.pagingEnabled = YES;
    
    
  
          for (int i = 0;i <[_data count];i++) {
        
        
        
         UIScrollView *slicrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0+320*i, 0, _scrollview.frame.size.width, _scrollview.frame.size.height)];
              
        slicrollview.delegate = self;
              slicrollview.pagingEnabled = YES;
        
      /*  markView = [[UIView alloc] initWithFrame:_slicrollview.frame];
        markView.backgroundColor = [UIColor clearColor];
        markView.alpha = 0;
        imgRect = _slicrollview.frame;*/
        
        
              UIImageView * imageView  = [[UIImageView alloc] init];
              
              imageView.frame = CGRectMake(0+320*i,0,_scrollview.frame.size.width,_scrollview.frame.size.height);
              
              
             
              imageView.clipsToBounds = YES;
              imageView.contentMode = UIViewContentModeScaleAspectFill;
              imageView.userInteractionEnabled = YES;                imageView.image = [UIImage imageNamed:[_data objectAtIndex:i]];
              
              [_scrollview addSubview:imageView];
    
        [_scrollview addSubview:slicrollview];
              
           
        
              
    }
    
    
    
    xxx = [[UIImageView alloc] initWithFrame:_slicrollview.frame];
    
    for (int i = 0;i <[_data count];i++)
    {
        xxx.image = [UIImage imageNamed:[_data objectAtIndex:i]];
    };
    xxx.contentMode = UIViewContentModeScaleAspectFill;
    xxx.clipsToBounds = YES;
    UITapGestureRecognizer *cap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cap:)];
    [markView addGestureRecognizer:cap];
    [markView addSubview:xxx];
    
  
  
    }

-(void)cap:(id)sender
{
    
 
    _slicrollview.zoomScale = 1.0;

    
    _scrollview.hidden = NO;
    
    //        [self.view addSubview:scrollImageView];
    
    [UIView animateWithDuration:0.3 animations:^{
        markView.alpha = 0;
    }];
    
    [UIView animateWithDuration:0.5 animations:^{
        xxx.frame = imgRect;
    } completion:^(BOOL finished) {
        
    }];
}

-(void)Tapped:(UIImageView*)image;
{
    
    
    if (markView.alpha == 0)
    {
        
        _scrollview.hidden = YES;
        markView.alpha = 1.0;
        
    
        
        //        [imgScrollView addSubview:scrollImageView];
        
        //        xxx = scrollImageView;
        
        
        [self performSelector:@selector(setAnimation) withObject:nil afterDelay:0.1];
    }
    else
    {
     /*   _slicrollview.zoomScale = 1.0;
        
        //        [self.view addSubview:scrollImageView];
        
        [UIView animateWithDuration:0.3 animations:^{
            markView.alpha = 0;
        }];
        
        [UIView animateWithDuration:0.5 animations:^{
            xxx.frame = imgRect;
        } completion:^(BOOL finished) {
            
        }];*/
        
    }
 
   }

- (void) setAnimation
{
    
    
    for (int i = 0;i <[_data count];i++)
    {
        imge = [UIImage imageNamed:[_data objectAtIndex:i]];
    };
    
    float tmpFlab = imge.size.width/320.0f;
    
    float tmpHeight = imge.size.height/tmpFlab;
    
    _slicrollview.maximumZoomScale = 480/tmpHeight;
    
    CGRect rect = CGRectMake(0, 10, 320, 430);
    [UIView animateWithDuration:0.3 animations:^{
        xxx.frame = rect;
    }];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return xxx;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    
    CGSize boundsSize = scrollView.bounds.size;
    CGRect imgFrame = xxx.frame;
    CGSize contentSize = scrollView.contentSize;
    
    CGPoint centerPoint = CGPointMake(contentSize.width/2, contentSize.height/2);
    
    // center horizontally
    if (imgFrame.size.width <= boundsSize.width)
    {
        centerPoint.x = boundsSize.width/2;
    }
    
    // center vertically
    if (imgFrame.size.height <= boundsSize.height)
    {
        centerPoint.y = boundsSize.height/2;
    }
    
    xxx.center = centerPoint;
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == _scrollview) {
        number = scrollView.contentOffset.x/scrollView.frame.size.width;
        self.qiezilabel.text = [NSString stringWithFormat:@"%d",number];
    }
    
     }

@end
