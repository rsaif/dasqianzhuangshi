//
//  FunctiondesingerDetailViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14/11/4.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "FunctiondesingerDetailViewController.h"
#import "EntitydesigerMessage.h"
#import "UIImageView+WebCache.h"
#import "EntitydesigerMessageSun.h"

@interface FunctiondesingerDetailViewController ()

@end

@implementation FunctiondesingerDetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _datalist = [NSMutableArray new];
    [self showAnimated:YES title:@"装修设计方案" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request)
     {
         Service *s = [Service serviceWithRequest:request];
         return [s designerMessage];
         
     }completionBlock:^(BOOL b,CGDataResult *r)
     {
        
         
         [_datalist addObjectsFromArray:r.dataList];
         
     }];
   
    
   
    
       
   
    
    for (EntitydesigerMessage * s in _datalist) {
        
      
        self.mingzi.text = s.title;
        self.fengge.text = s.Zy_ln;
        self.style.text = s.Zy_style;
        [self.toubuPicture sd_setImageWithURL:[NSURL URLWithString:s.Img_url] placeholderImage:DefaultImage];
        if (s.SunArry != 0) {
            self.detail.listarray = s.SunArry;
       
                  EntitydesigerMessageSun *h = [s.SunArry objectAtIndex:0];
        [self.datu sd_setImageWithURL:[NSURL URLWithString:h.Thumb_path] placeholderImage:DefaultImage];
        }
        
        
    };
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)button:(UIButton*)sender
{
    [self.navigationController pushViewController:CreateViewController(@"DrawViewingViewController") animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
