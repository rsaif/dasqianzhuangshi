//
//  EntityHomeSlide.m
//  Yijia
//
//  Created by Justin on 14-4-9.
//  Copyright (c) 2014年 rsaif. All rights reserved.
//

#import "EntityHomeSlide.h"

@implementation EntityHomeSlide
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    EntityHomeSlide *t = [[EntityHomeSlide new] Init];
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
