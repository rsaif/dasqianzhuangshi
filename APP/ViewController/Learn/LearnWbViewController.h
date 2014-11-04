//
//  LearnWbViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14/11/3.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"

@interface LearnWbViewController : ViewControllerImpl
{
     UIWebView *_webView;
}

-(id)initWithstring:(NSString*)stid;
@end
