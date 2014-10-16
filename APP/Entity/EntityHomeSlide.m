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
    t.Img = [dic objectForKey:@"img_url"];
    t.Title = [dic objectForKey:@"title"];
    return t;
}

@end
