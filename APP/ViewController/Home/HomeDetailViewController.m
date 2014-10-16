//
//  HomeDetailViewController.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeDetailViewController.h"

@interface HomeDetailViewController ()<UITableViewDataSource>

@end

@implementation HomeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [_tableView registerNib:[UINib nibWithNibName:@"HomeDetailInfo" bundle:nil] forCellReuseIdentifier:@"HomeDetailInfo"];
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
    switch (indexPath.row) {
        case 0:
            return [_tableView dequeueReusableCellWithIdentifier:@"HomeDetailInfo"];
            break;
            
        default:
            return [_tableView dequeueReusableCellWithIdentifier:@"HomeDetailImagesCell"];
            break;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.item) {
        case 0:
        {
            return 140;
        }
            break;
            
        default:
        {
            return 125;
        }
            break;
    }
}
@end
