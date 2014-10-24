//
//  ZHfangdaSCrollview.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHfangdaSCrollview : UIScrollView<UIScrollViewDelegate>
{
     UIImageView *_imageView;
}
@property (nonatomic, retain) UIImageView *imageView;
@end
