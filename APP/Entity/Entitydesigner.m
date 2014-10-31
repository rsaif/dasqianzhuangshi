//
//  Entitydesigner.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/31.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "Entitydesigner.h"

@implementation Entitydesigner
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    Entitydesigner *t = [[Entitydesigner new] Init];
    t.Sum = [dic objectForKey:@"sum"];
    t.Id = [dic objectForKey:@"id"];
    t.Click = [dic objectForKey:@"click"];
    t.title = [dic objectForKey:@"title"];
    t.Channel_id = [dic objectForKey:@"channel_id"];
    t.Call_index = [dic objectForKey:@"call_index"];
    t.Link_url = [dic objectForKey:@"link_url"];
    t.Seo_title = [dic objectForKey:@"seo_title"];
    t.Seo_Keywords = [dic objectForKey:@"seo_keywords"];
    t.Seo_description = [dic objectForKey:@"seo_description"];
    t.Img_url = [dic objectForKey:@"img_url"];
    t.Category_id = [dic objectForKey:@"category_id"];
    t.sort_id = [dic objectForKey:@"sort_id"];
    t.Click = [dic objectForKey:@"click"];
    t.status = [dic objectForKey:@"status"];
    t.Group_view = [dic objectForKey:@"groupids_view"];
    t.vote_id = [dic objectForKey:@"vote_id"];
    t.Is_msg = [dic objectForKey:@"is_msg"];
    t.Is_top = [dic objectForKey:@"is_top"];
    t.Is_red = [dic objectForKey:@"is_red"];
    t.Is_hot = [dic objectForKey:@"is_hot"];
    t.Is_slide = [dic objectForKey:@"is_slide"];
    t.Is_sys = [dic objectForKey:@"is_sys"];
    t.Add_time = [dic objectForKey:@"add_time"];
    t.User_name = [dic objectForKey:@"user_name"];
   
    
    
    return t;
}
@end
