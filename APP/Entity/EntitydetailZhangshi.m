//
//  EntitydetailZhangshi.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/31.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntitydetailZhangshi.h"

@implementation EntitydetailZhangshi
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntitydetailZhangshi *r = [[EntitydetailZhangshi new] Init];
    r.Sum = [dic objectForKey:@"sum"];
    r.Id = [dic objectForKey:@"id"];
    r.Arrtile_id = [dic objectForKey:@"article_id"];
    r.Thumb_path = [dic objectForKey:@"thumb_path"];
    r.Original_path = [dic objectForKey:@"original_path"];
    return r;
}
    @end
