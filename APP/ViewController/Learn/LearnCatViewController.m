//
//  LearnCatViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-16.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "LearnCatViewController.h"
#import "LearnCatheaderCell.h"

#import "ExtendViewCell.h"
#import "LearnCateditCell.h"
#import "KKContactCell.h"

@interface LearnCatViewController ()


@end

@implementation LearnCatViewController

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
    
    
    
      mainTable.delegate = self;
    mainTable.dataSource = self;
    
    [mainTable setScrollEnabled:NO];
    [self setExtracellhidden:mainTable];
    
   
    _array = [[NSMutableArray alloc]initWithObjects:@"img_study_one.png",@"img_study_two.png",@"img_study_three.png",@"img_study_four.png",@"img_study_five.png", nil];
    
    didSection = _array.count+1;
    [self performSelector:@selector(firstOneClicked) withObject:self afterDelay:0.2f];
    
   }
-(void)setExtracellhidden:(UITableView*)tableView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}
- (void)firstOneClicked{
    didSection = 0;
    endSection = 0;
    [self didSelectCellRowFirstDo:YES nextDo:NO];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == didSection) {
        return 1;
    }
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row==0) {
        
       
        static NSString *CellIdentifier = @"PlaceAddressCell";
        
        LearnCateditCell *cell=(LearnCateditCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil)
        {
            NSArray *nibs=[[NSBundle mainBundle] loadNibNamed:@"LearnCateditCell" owner:self options:nil];
            for(id oneObject in nibs)
            {
                if([oneObject isKindOfClass:[LearnCateditCell class]])
                {
                    cell = (LearnCateditCell *)oneObject;
                }
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
//           [cell.detailLabel setText:@"asfssdsafsasfsaf"];
        }
        return cell;
    }
    else{
        static NSString *CellIdentifier = @"KKContactCell";
        
        KKContactCell *cell=(KKContactCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell==nil)
        {
            NSArray *nibs=[[NSBundle mainBundle] loadNibNamed:@"KKContactCell" owner:self options:nil];
            for(id oneObject in nibs)
            {
                if([oneObject isKindOfClass:[KKContactCell class]])
                {
                    cell = (KKContactCell *)oneObject;
                    
                   
                }
            }
          //  cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell.titleLabel setText:@"asfssdsafsasfsaf"];
        }
        return cell;
    }
   }


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _array.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == didSection) {
        return 130;
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 65;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *mView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 110)];
    [mView setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *logoView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 90, 90)];
   LearnCatheaderCell *cell = CreateCell(@"LearnCatheaderCell");
    
   
    //[logoView setImage:[UIImage imageNamed:[_array objectAtIndex:section]]];
    cell.imgStudy.image = [UIImage imageNamed:[_array objectAtIndex:section]];
    
    [mView addSubview:cell];
    
    if (section<_array.count-1) {
        UIImageView *lineView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 109, 320, 1)];
        [lineView setImage:[UIImage imageNamed:@"XX0022"]];
        [mView addSubview:lineView];
       
    }
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setFrame:CGRectMake(0, 0, 320, 110)];
    [bt setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bt setTag:section];
    [bt.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [bt.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [bt.titleLabel setTextColor:[UIColor blueColor]];
    [bt addTarget:self action:@selector(addCell:) forControlEvents:UIControlEventTouchUpInside];
    [mView addSubview:bt];
    return mView;
}
- (void)addCell:(UIButton *)bt{
    endSection = bt.tag;
    if (didSection==_array.count+1) {
        ifOpen = NO;
        didSection = endSection;
        [self didSelectCellRowFirstDo:YES nextDo:NO];
    }
    else{
        if (didSection==endSection) {
            [self didSelectCellRowFirstDo:NO nextDo:NO];
        }
        else{
            [self didSelectCellRowFirstDo:NO nextDo:YES];
        }
    }
}
- (void)didSelectCellRowFirstDo:(BOOL)firstDoInsert nextDo:(BOOL)nextDoInsert{
    [mainTable beginUpdates];
    ifOpen = firstDoInsert;
    NSMutableArray* rowToInsert = [[NSMutableArray alloc] init];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:didSection];
    [rowToInsert addObject:indexPath];
   /* NSIndexPath *indexPath1 = [NSIndexPath indexPathForRow:1 inSection:didSection];
    [rowToInsert addObject:indexPath1];*/
    if (!ifOpen) {
        didSection = _array.count+1;
        [mainTable deleteRowsAtIndexPaths:rowToInsert withRowAnimation:UITableViewRowAnimationFade];
    }else{
        [mainTable insertRowsAtIndexPaths:rowToInsert withRowAnimation:UITableViewRowAnimationFade];
    }
    
    [mainTable endUpdates];
    if (nextDoInsert) {
        didSection = endSection;
        [self didSelectCellRowFirstDo:YES nextDo:NO];
    }
    [mainTable scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionTop animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
