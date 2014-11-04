//
//  EntitydesigerMessage.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntitydesigerMessage.h"
#import "EntitydesigerMessageSun.h"

@implementation EntitydesigerMessage
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntitydesigerMessage *t = [[EntitydesigerMessage new] Init];
    t.title = [dic objectForKey:@"title"];
    t.Img_url = [dic objectForKey:@"img_url"];
    t.Zy_ln = [dic objectForKey:@"zy_ln"];
    t.Zy_style = [dic objectForKey:@"zy_style"];
    t.sun = [dic objectForKey:@"sun"];
    t.SunArry = [EntityObject getObjecsFromDic:t.sun];
       
    return t;
}
@end
