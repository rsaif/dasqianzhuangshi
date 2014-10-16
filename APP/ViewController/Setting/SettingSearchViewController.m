//
//  SettingSearchViewController.m
//  Zhuangshi
//
//  Created by rsaif on 14/10/16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "SettingSearchViewController.h"

@interface SettingSearchViewController ()

@end

@implementation SettingSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self addASearchBar];
    [_tableView registerNib:[UINib nibWithNibName:@"SettingSearchClearCell" bundle:nil] forCellReuseIdentifier:@"SettingSearchClearCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)title{
    return @"搜索";
}
#pragma mark - delegate for UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 4:
            return [tableView dequeueReusableCellWithIdentifier:@"SettingSearchClearCell"];
            break;
            
        default:
        {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"searchCell"];
            if (!cell) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"searchCell"];
            }
            cell.textLabel.text = @"搜索内容1";
            return cell;
        }
            break;
    }
}
#pragma mark - 搜索栏
-(void)addASearchBar{
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    self.navigationItem.titleView = searchBar;
}

@end
