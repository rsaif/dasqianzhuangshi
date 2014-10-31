//
//  Entitylearnphoto.h
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EntityObject.h"
#import "EmtitylearnphotoSun.h"
@interface Entitylearnphoto : EntityObject
@property(nonatomic,strong)NSString *title;
@property(nonatomic,strong)NSString *Parent_id;
@property(nonatomic,strong)NSString *call_index;
@property(nonatomic,strong)NSString *Seotitle;
@property(nonatomic,strong)NSString *Channel_id;
@property(nonatomic,strong)NSString *Subtitle;
@property(nonatomic,strong)NSString *preat_di;
@property(nonatomic,strong)NSString *Content;
@property(nonatomic,strong)NSString *calll_index;

@property(nonatomic,strong)EmtitylearnphotoSun *Sun;
@property(nonatomic,strong)NSArray *Sunarry;
@end
