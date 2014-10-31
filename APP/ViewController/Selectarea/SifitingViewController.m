//
//  SifitingViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-27.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "SifitingViewController.h"
#import "SelectdifangCell.h"
@interface SifitingViewController ()

@end

@implementation SifitingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    SelectdifangCell *cell = CreateCell(@"SelectdifangCell");
    _SifitableView.tableHeaderView = cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 5;
    }
    else if (section == 1)
    {
        return 6;
    }
     return 0;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SelectarreraCell *cell = CreateCell(@"SelectarreraCell");
    cell.delegate = self;
    cell.indexpach = indexPath;
    [cell.anniubtn setBackgroundImage:[UIImage imageNamed:@"un-checked.png"] forState:UIControlStateNormal];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 25;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,320,20)];
    aView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    UILabel *wenzilabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    wenzilabel.textAlignment = NSTextAlignmentCenter;
    if (section == 0) {
        wenzilabel.text = @"楼盘";
    }
    else if (section == 1)
    {
        wenzilabel.text = @"户型";
    }
    else if (section == 2)
    {
        wenzilabel.text = @"风格";
    }
    [aView addSubview:wenzilabel];
    return aView;
}
-(void)Sellectarrera:(NSIndexPath *)indexpatch withbutton:(UIButton *)buttn
{
    [self otherbutton:buttn];
}

-(void)otherbutton:(UIButton*)sender
{
    
    
    for (NSIndexPath *cellindex in [_SifitableView indexPathsForVisibleRows]) {
        SelectarreraCell *laxtcell= (SelectarreraCell*) [_SifitableView cellForRowAtIndexPath:cellindex];
        
        if (sender == laxtcell.anniubtn) {
            [laxtcell.anniubtn setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            [laxtcell.anniubtn setBackgroundImage:[UIImage imageNamed:@"un-checked.png"] forState:UIControlStateNormal];
            
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
