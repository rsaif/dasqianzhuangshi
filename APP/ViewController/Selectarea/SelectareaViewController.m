//
//  SelectareaViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "SelectareaViewController.h"

@interface SelectareaViewController ()

@end

@implementation SelectareaViewController

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
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SelectarreraCell *cell = CreateCell(@"SelectarreraCell");
    cell.delegate = self;
    cell.indexpach = indexPath;
    
    
        
    
    
        [cell.anniubtn setBackgroundImage:[UIImage imageNamed:@"un-checked.png"] forState:UIControlStateNormal];
         
      
         return cell;
    }

#pragma mark UITableViewCelldelegate
-(void)Sellectarrera:(NSIndexPath *)indexpatch withbutton:(UIButton *)buttn

{
    
    
    [self otherbutton:buttn];
    
        
    
   
    
 }

-(void)otherbutton:(UIButton*)sender
{
    
    
    for (NSIndexPath *cellindex in [_seltableView indexPathsForVisibleRows]) {
        SelectarreraCell *laxtcell= (SelectarreraCell*) [_seltableView cellForRowAtIndexPath:cellindex];
        
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
