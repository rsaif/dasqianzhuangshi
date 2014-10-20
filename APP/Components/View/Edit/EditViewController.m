//
//  EditViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EditViewController.h"
#import "EditheaderCell.h"
#import "Savebtton.h"
#import "UserViewCell.h"
@implementation EditViewController

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
     
        // Initialization code
        tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        [ tableView setScrollEnabled:NO];
        [self setExtracellhidden:tableView];
        [self addSubview:tableView];
    }
    return self;
}

-(void)setExtracellhidden:(UITableView*)tableView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UserViewCell *cell = CreateCell(@"UserViewCell");
    if (indexPath.row == 0) {
        cell.mingzi.text = @"用户名";
        cell.arrowimage.hidden = YES;
        
           }
    else if (indexPath.row == 1)
    {
         cell.mingzi.text = @"姓名";
        cell.arrowimage.hidden = YES;
    }else if (indexPath.row == 2)
    {
        cell.mingzi.text = @"注册状态";
        cell.tinxie.placeholder = @"还没有买房";
        
    }else if (indexPath.row == 3)
    {
        cell.mingzi.text = @"所在城市";
        cell.tinxie.placeholder = @"河南 洛阳 县区选择";
    }
    else if (indexPath.row == 4)
    {
     cell.mingzi.text = @"详细城市";
        cell.arrowimage.hidden = YES;
        
    }
    
    
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 4) {
        return 80;
    }
    return 45;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
       return 40;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
     EditheaderCell *cell = CreateCell(@"Ediitheader");
    [aView addSubview:cell];
    return aView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    Savebtton *cell = CreateCell(@"Savebtton");
    [aView addSubview:cell];
    return aView;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
