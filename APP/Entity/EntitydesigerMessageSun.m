//
//  EntitydesigerMessageSun.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntitydesigerMessageSun.h"

@implementation EntitydesigerMessageSun
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntitydesigerMessageSun *r = [[EntitydesigerMessageSun new] Init];
    r.Id  = [dic objectForKey:@"id"];
    r.Thumb_path = [dic objectForKey:@"thumb_path"];
    r.Original_path = [dic objectForKey:@"original_path"];
    return r;
}

@end
