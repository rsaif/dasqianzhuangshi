//
//  Entitylearnphoto.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "Entitylearnphoto.h"

@implementation Entitylearnphoto
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    Entitylearnphoto *t = [[Entitylearnphoto alloc] init];
    t.title = [dic objectForKey:@"title"];
    t.Parent_id = [dic objectForKey:@"parent_id"];
    t.call_index = [dic objectForKey:@"call_index"];
    t.Seotitle = [dic objectForKey:@"seotitle"];
    t.Sun = [dic objectForKey:@"sun"];
    t.Sunarry = [EntityObject getObjecsFromDic:t.Sun];
   
    return t;
    
}
    @end
