//
//  PrintCollectionViewController.h
//  Zhuangshi
//
//  Created by xhpmac on 14-10-24.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrintCollectionViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{
    __weak IBOutlet UICollectionView *_favorieCollectview;
}

@end
