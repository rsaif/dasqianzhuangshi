//
//  InformationController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "SettingViewController.h"
#import "Exitchu.h"
#import "SettingView.h"
@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [tableview setSeparatorColor:[UIColor clearColor]];
    tableview.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    else if (section == 1)
    {
        return 3;
    }
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section
{
    return 20;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 20)];
    aView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    return aView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    
    if (section == 0) {
        return 0;
    }
    
        
    return 30;
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc]init];
    if (section == 1) {
        Exitchu *chu = CreateCell(@"Exitchu");
        [aView addSubview:chu];
    }
      return aView;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingView *Cell = CreateCell(@"SettingView");
    if (indexPath.section == 0&&indexPath.row == 0) {
        Cell.mingzilabl.text = @"意见反馈";
           }
    else if (indexPath.section == 0&&indexPath.row == 1)
    {
        Cell.mingzilabl.text =@"去给我买一个打分，评价一下";
    }
   else if (indexPath.section == 1&& indexPath.row == 0)
   {
       Cell.mingzilabl.text = @"当前版本     最新版本";
   }
    else if (indexPath.section == 1&& indexPath.row ==1 )
    {
        Cell.mingzilabl.text = @"服务条款";
        
    }
    else if (indexPath.section == 1&& indexPath.row ==2 )
    {
        Cell.mingzilabl.text = @"清除图片缓存";
        
    }
    return Cell;
    
   }


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

@end
