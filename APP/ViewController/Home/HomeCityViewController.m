//
//  HomeCityViewController.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeCityViewController.h"
#import "HomeCityCell.h"
#import <SlideNavigationController.h>
#import "EntiyHomebuliding.h"
#import "HomeHouseListViewController.h"
@interface HomeCityViewController ()<UISearchBarDelegate>

@end

@implementation HomeCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _dataList = [NSMutableArray new];
   // [_dataList addObjectsFromArray:@[@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@""]];
    _tableView.isFooter = NO;
    [_tableView registerNib:[UINib nibWithNibName:@"HomeCityCell" bundle:nil] forCellReuseIdentifier:@"HomeCityCell"];
    [self addSearchBar];
    [self setExtracellhidden:_tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - custom methods
-(void)addSearchBar{
    UISearchBar *bar = [[UISearchBar alloc] initWithFrame:CGRectMake(40, 0, 10, 44)];
    bar.placeholder = @"直接搜我家";
    bar.backgroundColor = [UIColor clearColor];
    for (UIView *v1 in bar.subviews) {
        for (UIView *v in v1.subviews) {
            if ([v isKindOfClass:NSClassFromString(@"UISearchBarBackground")]) {
                [v removeFromSuperview];
            }
        }
    }
    bar.delegate = self;
    _tableView.tableHeaderView = bar;
}

#pragma mark - delegate for searchbar
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
//    SettingSearchViewController
    [[SlideNavigationController sharedInstance] toggleRightMenu];
    [[(UITabBarController *)[[SlideNavigationController sharedInstance] topViewController] viewControllers][0] pushViewController:CreateViewController(@"SettingSearchViewController") animated:YES];
    return NO;
}
#pragma mark - delegate for UITableView
-(void)loadMore{
    
}
-(void)refreshView{
    
    CGDataResult *r = [[Service serviceWithRequest:[self createRequestWithPost:YES]]homebuliding];
    
    if (r.status.boolValue) {
        [_dataList removeAllObjects];
        [_dataList addObjectsFromArray:r.dataList];
        [_tableView reloadData];
        
               
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EntiyHomebuliding *building = _dataList[indexPath.row];
    
    HomeHouseListViewController *homelist = [[HomeHouseListViewController alloc] initWithing:building.Id];
   /* [[SlideNavigationController sharedInstance] toggleRightMenu];
    [[(UITabBarController *)[[SlideNavigationController sharedInstance] topViewController] viewControllers][0] pushViewController:CreateViewController(@"HomeHouseListViewController") animated:YES];*/
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HomeCityCell *cell = CreateCell(@"HomeCityCell");
   
    cell.indexPath = indexPath;
    cell.data = _dataList;
   
  
    return cell;
   /* switch (indexPath.row) {
        case 0:
        {
            HomeCityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCityCell"];
            cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_btn_enter"]];
            return cell;
        }
            break;
            
        default:
        {
            HomeCityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCityCell"];
            cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_btn_enter"]];
            return cell;
        }
            break;
    }*/
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataList.count;
   
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    switch (indexPath.item) {
//        case 0:
//        {
//            return 145;
//        }
//            break;
//            
//        default:
//        {
//            return 75;
//        }
//            break;
//    }
//}
@end
