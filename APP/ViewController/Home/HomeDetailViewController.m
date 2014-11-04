//
//  HomeDetailViewController.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeDetailViewController.h"
#import "HomeDetailImagesCell.h"
#import "HomeDetailInfo.h"
@interface HomeDetailViewController ()<UITableViewDataSource>

@end

@implementation HomeDetailViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _datalist = [NSMutableArray new];
    _datalist1 = [NSMutableArray new];
    _datalist2 = [NSMutableArray new];
    _datalist3 = [NSMutableArray new];
    [self showAnimated:YES title:@"户型图" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request)
     {
         Service *s = [Service serviceWithRequest:request];
         return [s Villagefloor];
         
     }completionBlock:^(BOOL b,CGDataResult *r)
     {
         [_datalist addObjectsFromArray:r.dataList];
         
     }];
    
    [self showAnimated:YES title:@"楼盘图" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request)
     {
         Service *s = [Service serviceWithRequest:request];
         return [s Villagefloor];
         
     }completionBlock:^(BOOL b,CGDataResult *r)
     {
         [_datalist addObjectsFromArray:r.dataList];
         
     }];
    [self showAnimated:YES title:@"样版间" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request)
     {
         Service *s = [Service serviceWithRequest:request];
         return [s VillagefloorModel];
         
     }completionBlock:^(BOOL b,CGDataResult *r)
     {
         [_datalist addObjectsFromArray:r.dataList];
         
     }];
    [self showAnimated:YES title:@"装修设计方案" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request)
     {
         Service *s = [Service serviceWithRequest:request];
         return [s Villagesgtlist];
         
     }completionBlock:^(BOOL b,CGDataResult *r)
     {
         [_datalist addObjectsFromArray:r.dataList];
         
     }];
    
       
    // Do any additional setup after loading the view from its nib.
   /* [self showAnimated:YES title:@"获取滑动的脸的数据" whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request) {
        
        
        Service *s = [Service serviceWithRequest:request];
        s.isXml = YES;
        
        
        
        return [s getbanagers];
    } completionBlock:^(BOOL b, CGDataResult *r) {
        if (b) {
            
            [_scrollarry addObjectsFromArray:r.dataList];
            [_tableView reloadData];
            
        }*/
     // [_tableView registerNib:[UINib nibWithNibName:@"HomeDetailInfo" bundle:nil] forCellReuseIdentifier:@"HomeDetailInfo"];
    [_tableView registerNib:[UINib nibWithNibName:@"HomeDetailImagesCell" bundle:nil] forCellReuseIdentifier:@"HomeDetailImagesCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - delegate for UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
      HomeDetailImagesCell *cell = CreateCell(@"HomeDetailImagesCell");
    if (indexPath.row == 0) {
        
      cell.loupantu.text = @"户型图";
        cell.data = _datalist;
    }
    else if (indexPath.row == 1)
    {
        cell.data = _datalist1;
    
       cell.loupantu.text = @"楼盘图";
    }
    else if (indexPath.row == 2)
    {
        cell.data = _datalist2;
        cell.loupantu.text = @"样板间";
    }
    else if (indexPath.row == 3)
    {
        cell.data = _datalist3;
        cell.loupantu.text = @"装修设计方案";
    }
   
    return cell;
    
 /*   HomeDetailImagesCell *cell = CreateCell(@"HomeDetailImagesCell");
    switch (indexPath.row) {
        case 0:
            return [_tableView dequeueReusableCellWithIdentifier:@"HomeDetailInfo"];
            break;
            
            case 1:
            
    
        
            return cell;
        
    
            break;
         
            
      
          //  return [_tableView dequeueReusableCellWithIdentifier:@"HomeDetailImagesCell"];
            
    }*/
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 125;
   }
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 140;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc] init];
    HomeDetailInfo *cell = CreateCell(@"HomeDetailInfo");
    [aView addSubview:cell];
    return aView;
}
@end
