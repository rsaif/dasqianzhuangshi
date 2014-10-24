//
//  ResigerViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-24.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ResigerViewController.h"
#import "RegiserCell.h"
#import "EntrybuttonCell.h"
#import "SelectahouseView.h"
@interface ResigerViewController ()

@end

@implementation ResigerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        SelectahouseView *aView = [[SelectahouseView alloc] initWithFrame:self.view.frame];
        aView.backgroundColor = [UIColor redColor];
        [self.view addSubview:aView];
        [self.view bringSubviewToFront:aView];
        
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _resitable.delegate = self;
       _resitable.dataSource = self;
       _resitable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
       // Do any additional setup after loading the view from its nib.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RegiserCell *cell = CreateCell(@"RegiserCell");
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 80;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc] init];
    aView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    EntrybuttonCell *cell = CreateCell(@"EntrybuttonCell");
    [cell.btton setTitle:@"注册" forState:UIControlStateNormal];
    [cell.forget removeFromSuperview];
    [aView addSubview:cell];
    return aView;
    
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,40)];
    aView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    UILabel *wenzilabel = [[UILabel alloc] initWithFrame:aView.frame];
    wenzilabel.text = @"请输入手机号与密码登录";
    
    wenzilabel.font = [UIFont systemFontOfSize:13];
    [aView addSubview:wenzilabel];
    
    
    
    
    return aView;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
