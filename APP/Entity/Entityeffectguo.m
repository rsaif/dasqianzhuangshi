//
//  Entityeffectguo.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "Entityeffectguo.h"

@implementation Entityeffectguo
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    Entityeffectguo *t = [[Entityeffectguo new] Init];
   
    t.Id = [dic objectForKey:@"id"];
    t.Click = [dic objectForKey:@"title"];
    t.title = [dic objectForKey:@"title"];
    t.Channel_id = [dic objectForKey:@"channel_id"];
    t.Call_index = [dic objectForKey:@"call_index"];
    t.Add_time = [dic objectForKey:@"add_time"];
  
    t.Img_url = [dic objectForKey:@"img_url"];
    t.Seo_title = [dic objectForKey:@"seo_title"];
    t.Seo_keypassword = [dic objectForKey:@"seo_keywords"];
    t.Seo_description = [dic objectForKey:@"seo_description"];
    t.Content = [dic objectForKey:@"content"];
    t.sort_id = [dic objectForKey:@"sort_id"];
    t.Click = [dic objectForKey:@"click"];
    t.Group_view = [dic objectForKey:@"groupids_view"];
    t.vote_id = [dic objectForKey:@"vote_id"];
    t.Is_top = [dic objectForKey:@"is_top"];
    t.Is_red = [dic objectForKey:@"is_red"];
    t.Is_hot = [dic objectForKey:@"is_hot"];
    t.Is_slide = [dic objectForKey:@"is_slide"];
    t.Is_sys = [dic objectForKey:@"is_sys"];
    t.User_name = [dic objectForKey:@"user_name"];
    t.Update_time = [dic objectForKey:@"update_time"];
    t.Xgt_apartment = [dic objectForKey:@"xgt_apartment"];
    
    
    
  
    
    
    return t;
}
@end
