//
//  EntryViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntryViewController.h"
#import "EntryuserCell.h"
#import "EntrybuttonCell.h"
@interface EntryViewController ()

@end

@implementation EntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization]
        
       
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
         _mantable.delegate = self;
         _mantable.dataSource = self;
        _mantable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
      
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
    EntryuserCell *entryCell = CreateCell(@"EntryuserCell");
    
    return entryCell;
    
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
