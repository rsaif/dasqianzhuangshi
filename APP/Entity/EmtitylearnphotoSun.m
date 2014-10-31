//
//  EmtitylearnphotoSun.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EmtitylearnphotoSun.h"

@implementation EmtitylearnphotoSun
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EmtitylearnphotoSun *sun = [[EmtitylearnphotoSun new] Init];
    sun.Id = [dic objectForKey:@"id"];
    sun.Channel_id = [dic objectForKey:@"channel_id"];
    sun.title = [dic objectForKey:@"title"];
    sun.parent_id = [dic objectForKey:@"parent_id"];
    sun.Content = [dic objectForKey:@"content"];
    return sun;
}
@end
