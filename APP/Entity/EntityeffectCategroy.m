//
//  EntityeffectCategroy.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/31.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntityeffectCategroy.h"

@implementation EntityeffectCategroy
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntityeffectCategroy *r = [[EntityeffectCategroy new] Init];
    r.Sum = [dic objectForKey:@"sum"];
    r.Id = [dic objectForKey:@"id"];
    r.Channel_id = [dic objectForKey:@"channel_id"];
    r.title = [dic objectForKey:@"title"];
    r.Call_index = [dic objectForKey:@"call_index"];
    r.Parent_id = [dic objectForKey:@"parent_id"];
    r.Class_list = [dic objectForKey:@"class_list"];
    r.Class_layer = [dic objectForKey:@"class_layer"];
    r.Sort_id = [dic objectForKey:@"sort_id"];
    r.Link_url = [dic objectForKey:@"link_url"];
    r.Img_url = [dic objectForKey:@"img_url"];
    r.Seo_title = [dic objectForKey:@"seo_title"];
    r.Seo_Keywords = [dic objectForKey:@"seo_keywords"];
    r.Seo_description = [dic objectForKey:@"seo_description"];
    
    
    return r;
}

@end
