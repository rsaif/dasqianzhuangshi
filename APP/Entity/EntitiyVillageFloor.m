//
//  EntitiyVillageFloor.m
//  Zhuangshi
//
//  Created by xhpmac on 14/10/31.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntitiyVillageFloor.h"

@implementation EntitiyVillageFloor
+(EntityObject *)getObjectFromDic:(NSDictionary *)dic
{
    EntitiyVillageFloor*r = [[EntitiyVillageFloor new] Init];
    r.Sum = [dic objectForKey:@"sum"];
    r.Fg_id = [dic objectForKey:@"fg_id"];
    r.Thumb_path = [dic objectForKey:@"thumb_path"];
    r.Original_path = [dic objectForKey:@"original_path"];
    r.Add_time = [dic objectForKey:@"add_time"];
    return r;
}
@end
