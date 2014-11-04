//
//  FunctiondesingerDetailViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14/11/4.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "CGALabel.h"
#import "DrawViewingViewController.h"
@interface FunctiondesingerDetailViewController : ViewControllerImpl
{
    NSMutableArray *_datalist;
}
@property(nonatomic,weak)IBOutlet UIImageView *toubuPicture;
@property(nonatomic,weak)IBOutlet CGALabel *weizilabel;
@property(nonatomic,weak)IBOutlet UIImageView *datu;
@property(nonatomic,weak)IBOutlet UILabel *mingzi;
@property(nonatomic,weak)IBOutlet UILabel *style;
@property(nonatomic,weak)IBOutlet UILabel *fengge;
@property(nonatomic,weak)DrawViewingViewController *detail;
@property(nonatomic,weak)NSString *arrtile;
-(IBAction)button:(UIButton*)sender;
-(id)initWithing:(NSString*)arrtile;


@end
