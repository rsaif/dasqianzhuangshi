//
//  EntitydesigerMessage.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntitydesigerMessage.h"

@implementation EntitydesigerMessage
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntitydesigerMessage *t = [[EntitydesigerMessage new] Init];
    t.title = [dic objectForKey:@"title"];
    t.Img_url = [dic objectForKey:@"img_url"];
    t.Zy_ln = [dic objectForKey:@"zy_ln"];
    t.Zy_style = [dic objectForKey:@"zy_style"];
    
    t.SunArry = (NSArray*)[EntityObject getObjectFromDic:[dic objectForKey:@"sun"]];
   
    
    return t;
}
@end
