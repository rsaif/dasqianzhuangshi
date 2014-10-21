//
//  HomeHouseListViewController.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/20.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeHouseListViewController.h"
#import "HomeBuildingCell.h"

@interface HomeHouseListViewController ()

@end

@implementation HomeHouseListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _dataList = [NSMutableArray new];
    [_dataList addObjectsFromArray:@[@"",@"",@"",@"",@"",@""]];
    [_tableView registerNib:[UINib nibWithNibName:@"HomeBuildingCell" bundle:nil] forCellReuseIdentifier:@"HomeBuildingCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - delegate for loadview
-(void)loadMore{
    
}
-(void)refreshView{
}
#pragma mark - tableview datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeBuildingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeBuildingCell"];
    cell.data = _dataList[indexPath.row];
    cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_btn_enter"]];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataList.count;
}

@end
