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
#import "HomeDetailViewController.h"
#import "UIImageView+WebCache.h"
#import "EntityHomelist.h"
#import <ASIHTTPRequest.h>


//#import "HomeCategoryViewController.h"
//#import "HomeGoodListViewController.h"
@implementation HomeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
      
    _dataListSlide = [NSMutableArray new];
    _dataList = [NSMutableArray new];
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
    CGDataResult *r = [[Service serviceWithRequest:[self createRequestWithPost:YES]]homeSlider];
   
    if (r.status.boolValue) {
        [_dataListSlide removeAllObjects];
        [_dataListSlide addObjectsFromArray:r.dataList];
    
    }
    
    CGDataResult *h  = [[Service serviceWithRequest:[self createRequestWithPost:YES] ]homelist];
    if (h.status.boolValue) {
        [_dataList removeAllObjects];
        [_dataList addObjectsFromArray:h.dataList];
        
       
    }
    
//     _dataList = [[NSMutableArray alloc] initWithCapacity:0];
//    [self showAnimated:YES title:@"展示数据" post:YES whileExecutingBlock:^CGDataResult *(ASIHTTPRequest *request){
//        Service *s = [Service serviceWithRequest:request];
//        return [s HomeSlider];
//    } completionBlock:^(BOOL b,CGDataResult *r){
//        if (b) {
//          
//            
//        
//            [_dataList addObjectsFromArray:r.dataList];
//            NSLog(@"---%@==",_dataList);
//           
//        }
//    }];
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
            
            cell.data = _dataList;
            cell.indexPath = indexPath;
           
           /*       EntityHomelist *r = _dataList[indexPath.row -1];
            cell.textLabel.text = r.title;
           
            cell.detailTextLabel.text = r.Detailed_addres;
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:r.Img_url] placeholderImage:DefaultImage];
                      cell.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_btn_enter"]];*/
           
            return cell;
        }
            break;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataList.count+1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HomeBuildingCell *cell = (HomeBuildingCell*)[tableView cellForRowAtIndexPath:indexPath];
    HomeDetailViewController *detail = [[HomeDetailViewController alloc]init];
    detail.mingzi = cell.mingzi;
    detail.picture = cell.picture;
    detail.liulan  = cell.liulan;
    detail.address = cell.address;

   
    
   
    
    [self.navigationController pushViewController:CreateViewController(@"HomeDetailViewController") animated:YES];
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
