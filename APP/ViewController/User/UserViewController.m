//
//  SetController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "UserViewController.h"
#import "ExtendViewCell.h"

#import "EditViewController.h"
#import "SettingViewController.h"
@interface UserViewController ()

@end

@implementation UserViewController

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
    
      
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [tableView setScrollEnabled:NO];
    [self setExtracellhidden:tableView];
}

-(void)setExtracellhidden:(UITableView*)tableView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    else
    {
        return 1;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExtendViewCell *cell = CreateCell(@"ExtendViewCell");
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {
            cell.picture.image = [UIImage imageNamed:@"img_icon_personal.png"];
         
          
        }
        else if (indexPath.row == 1)
        {
            cell.picture.image = [UIImage imageNamed:@"img_icon_password.png"];
            
            cell.minglabel.text =@"修改密码";        }
        
      
        
    }
    else if (indexPath.row == 1)
    {
        cell.picture.image = [UIImage imageNamed:@"img_icon_set.png"];
        cell.minglabel.text = @"设置";
    }
    return cell;
    
    }
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
