//
//  EffectViewController.h
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ViewControllerImpl.h"
#import "UICollectionView+loadView2.h"
@interface EffectViewController : ViewControllerImpl<UICollectionViewDelegate,UICollectionViewDataSource,UIViewCollection_LoadViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionView_loadView2Delegate>{
    NSMutableArray *_dataList;
    __weak IBOutlet UICollectionView_loadView2 *_collectionView;
}

@end
