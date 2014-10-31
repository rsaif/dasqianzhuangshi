//
//  EntityHomelist.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntityHomelist.h"

@implementation EntityHomelist
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic{
    EntityHomelist *t = [[EntityHomelist new] Init];
    t.Sum = [dic objectForKey:@"sum"];
    t.Id = [dic objectForKey:@"id"];
    t.Click = [dic objectForKey:@"click"];
    t.title = [dic objectForKey:@"title"];
    t.Channel_id = [dic objectForKey:@"channel_id"];
    t.Call_index = [dic objectForKey:@"call_index"];
    t.Add_time = [dic objectForKey:@"add_time"];
    t.Class_list = [dic objectForKey:@"class_list"];
    t.Img_url = [dic objectForKey:@"img_url"];
    
    
    t.Category = [dic objectForKey:@"CATEGORY_ID"];
    t.Detailed_addres = [dic objectForKey:@"Detailed_address"];
    
    
      return t;
}
@end
