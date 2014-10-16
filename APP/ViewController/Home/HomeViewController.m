//
//  HomeViewController.m
//  Base
//
//  Created by Justin on 14-7-17.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeSliderCell.h"
#import "HomeBuildingCell.h"
#import <SlideNavigationController.h>
//#import "HomeCategoryViewController.h"
//#import "HomeGoodListViewController.h"
@implementation HomeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _dataList = [NSMutableArray new];
    _dataListSlide = [NSMutableArray new];
    [_dataList addObjectsFromArray:@[@"",@"",@"",@"",@"",@""]];
    _tableView.isFooter = NO;
    [_tableView registerNib:[UINib nibWithNibName:@"HomeSliderCell" bundle:nil] forCellReuseIdentifier:@"HomeSliderCell"];
    [_tableView registerNib:[UINib nibWithNibName:@"HomeBuildingCell" bundle:nil] forCellReuseIdentifier:@"HomeBuildingCell"];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"筛选" style:UIBarButtonItemStylePlain target:[SlideNavigationController sharedInstance] action:@selector(toggleRightMenu)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    
    
}
-(BOOL)hidesBottomBarWhenPushed{
    return NO;
}

#pragma mark - custom methods
-(void)goFiter{
}
#pragma mark - delegate for UICollectionView
-(void)loadMore{
    
}
-(void)refreshView{
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            HomeSliderCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeSliderCell"];
            cell.dataList = _dataListSlide;
            return cell;
        }
            break;
            
        default:
        {
            HomeBuildingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeBuildingCell"];
            cell.data = _dataList[indexPath.row-1];
            cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_btn_enter"]];
            return cell;
        }
            break;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataList.count+1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.item) {
        case 0:
        {
            return 145;
        }
            break;
            
        default:
        {
            return 75;
        }
            break;
    }
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}
@end
