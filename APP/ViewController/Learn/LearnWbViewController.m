//
//  LearnWbViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14/11/3.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "LearnWbViewController.h"

@interface LearnWbViewController ()

@end

@implementation LearnWbViewController
-(id)initWithstring:(NSString*)stid
{
    
    NSLog(@"--%@==",stid);
    if (self == [super init]) {
        
        _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        
        NSString *str = [NSString stringWithFormat:@"http://121.42.15.32:81/xzx_show.aspx?=%@",stid];
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:str]];
            
        [_webView loadRequest:request];
        [self.view addSubview:_webView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
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
