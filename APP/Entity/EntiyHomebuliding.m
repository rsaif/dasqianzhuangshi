//
//  EntiyHomeSlde.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntiyHomebuliding.h"

@implementation EntiyHomebuliding
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    EntiyHomebuliding *t = [[EntiyHomebuliding alloc] init];
    t.Sum = [dic objectForKey:@"sum"];
    t.Id = [dic objectForKey:@"id"];
    t.title = [dic objectForKey:@"title"];
    t.Channel_id = [dic objectForKey:@"channel_id"];
    t.Call_index = [dic objectForKey:@"call_index"];
    t.Parent_id = [dic objectForKey:@"parent_id"];
    t.Class_list = [dic objectForKey:@"class_list"];
    t.Class_layer = [dic objectForKey:@"class_layer"];
    
    
    t.Sort_id = [dic objectForKey:@"sort_id"];
    t.Link_url = [dic objectForKey:@"link_url"];
    t.Img_url = [dic objectForKey:@"img_url"];
    t.Content = [dic objectForKey:@"content"];
    
    
    t.Seo_title = [dic objectForKey:@"seo_title"];
    t.Seo_Keywords = [dic objectForKey:@"seo_keywords"];
    t.Seo_description = [dic objectForKey:@"seo_description"];
    t.Img_url_phone = [dic objectForKey:@"img_url_phone"];
   
    
   
    return t;
}
@end
