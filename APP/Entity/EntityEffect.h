//
//  EntityEffect.h
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntityObject.h"

@interface EntityEffect : EntityObject
@property(nonatomic,strong)NSString *url;
@property(nonatomic,strong)NSString *isUpdated;


@property(nonatomic,strong)NSString *width;
@property(nonatomic,strong)NSString *height;

@property(nonatomic,strong)NSString *x;
@property(nonatomic,strong)NSString *y;
+(id)dataWithUrl:(NSString *)url;
+(NSArray *)arrFromArr:(NSArray *)arr;
@end
