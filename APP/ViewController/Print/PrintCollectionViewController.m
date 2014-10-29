//
//  PrintCollectionViewController.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-24.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "PrintCollectionViewController.h"
#import "PrintCollectionCell.h"

@interface PrintCollectionViewController ()

@end

@implementation PrintCollectionViewController

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
    _favorieCollectview.backgroundColor = [UIColor groupTableViewBackgroundColor];
   
    [ _favorieCollectview registerNib:[UINib nibWithNibName:@"PrintCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"print"];
    // Do any additional setup after loading the view from its nib.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    
    
    PrintCollectionCell *cell = [_favorieCollectview dequeueReusableCellWithReuseIdentifier:@"print" forIndexPath:indexPath];
    
    for (UIView *aView in cell.contentView.subviews) {
          }
    
    return cell;
    
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 2, 3,10);
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
  CGSize frame =  CGSizeMake(95, 95);
    return frame;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
