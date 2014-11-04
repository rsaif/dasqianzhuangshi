//
//  Entitylearnshow.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "Entitylearnshow.h"

@implementation Entitylearnshow
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    Entitylearnshow *t = [[Entitylearnshow new] Init];
    t.Id = [dic objectForKey:@"id"];
    t.title = [dic objectForKey:@"title"];
    t.alt = [dic objectForKey:@"alt"];
    t.Inpage = [dic objectForKey:@"inpage"];
    t.Inpath = [dic objectForKey:@"inpath"];
    t.Width = [dic objectForKey:@"width"];
    t.Height = [dic objectForKey:@"height"];
    t.Sort_id = [dic objectForKey:@"sort_id"];
    t.Is_red = [dic objectForKey:@"is_red"];
    t.Is_lock = [dic objectForKey:@"is_lock"];
    t.Enddate = [dic objectForKey:@"enddate"];
    t.Add_time = [dic objectForKey:@"add_time"];
    t.Target_url = [dic objectForKey:@"target_url"];
    
    
    
    return t;
}
@end
