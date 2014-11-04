//
//  FunctiondesingerViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14/11/3.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "FunctiondesingerViewController.h"
#import "FunctionLivingRoomCell.h"
#import "Entitydesigner.h"
@interface FunctiondesingerViewController ()

@end

@implementation FunctiondesingerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     _dataList = [NSMutableArray new];
    

    [_tableView registerNib:[UINib nibWithNibName:@"FunctionLivingRoomCell" bundle:nil] forCellReuseIdentifier:@"FunctionLivingRoomCell"];
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
    
    CGDataResult *h  = [[Service serviceWithRequest:[self createRequestWithPost:YES] ]designerlist];
    if (h.status.boolValue) {
        [_dataList removeAllObjects];
        [_dataList addObjectsFromArray:h.dataList];
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FunctionLivingRoomCell *fun = CreateCell(@"FunctionLivingRoomCell");
    fun.data = _dataList;
   
       return fun;
    
    
   }
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_dataList count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
   
    [self.navigationController pushViewController:CreateViewController(@"FunctiondesingerDetailViewController") animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
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
