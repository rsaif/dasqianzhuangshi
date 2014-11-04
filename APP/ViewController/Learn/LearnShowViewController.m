//
//  LearnShowViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "LearnShowViewController.h"
#import "LearndecrotionCellTableViewCell.h"
#import "LearnBuildingCell.h"
#import <SlideNavigationController.h>
#import "HomeDetailViewController.h"
#import "UIImageView+WebCache.h"
#import "EntityHomelist.h"
#import "LearnCatViewController.h"
#import "LearnWbViewController.h"
@interface LearnShowViewController ()

@end
@implementation LearnShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _dataListSlide = [NSMutableArray new];
    _dataList = [NSMutableArray new];
    _tableView.isFooter = NO;
    
    
    [_tableView registerNib:[UINib nibWithNibName:@"LearndecrotionCellTableViewCell" bundle:nil] forCellReuseIdentifier:@"LearndecrotionCellTableViewCell"];
    [_tableView registerNib:[UINib nibWithNibName:@"LearnBuildingCell" bundle:nil] forCellReuseIdentifier:@"LearnBuildingCell"];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"筛选" style:UIBarButtonItemStylePlain target:self action:@selector(zuola)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    

}
-(void)zuola
{
    [self .navigationController pushViewController:CreateViewController(@"LearnCatViewController") animated:YES];
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
    CGDataResult *r = [[Service serviceWithRequest:[self createRequestWithPost:YES]]learnscrollview];
    if (r.status.boolValue) {
        [_dataListSlide removeAllObjects];
        [_dataListSlide addObjectsFromArray:r.dataList];
       
    }
    
    CGDataResult *h  = [[Service serviceWithRequest:[self createRequestWithPost:YES] ]learntablelist];
    if (r.status.boolValue) {
        [_dataList removeAllObjects];
        [_dataList addObjectsFromArray:h.dataList];
        
       
    }
    
  }


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            LearndecrotionCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LearndecrotionCellTableViewCell"];
            cell.dataList = _dataListSlide;
            
            
            return cell;
        }
            break;
            
        default:
        {
            LearnBuildingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LearnBuildingCell"];
            
            cell.data = _dataList;
            cell.indexPath = indexPath;
            
                         
            
            return cell;
        }
            break;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataList.count+1;
   }
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row != 0) {
        LearnBuildingCell *cell = (LearnBuildingCell*)[tableView cellForRowAtIndexPath:indexPath];
        LearnWbViewController *webView = [[LearnWbViewController alloc] initWithstring:cell.stid];
        [self.navigationController pushViewController:webView animated:YES];
    }
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
