//
//  EntityEffect.m
//  Zhuangshi
//
//  Created by shuguan on 14-9-10.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntityEffect.h"

@implementation EntityEffect
+(id)dataWithUrl:(NSString *)url{
    EntityEffect *e = [[[EntityEffect alloc] init] Init];
    e.url = url;
    e.width = @"100";
    e.height = @"100";
    e.x = @"0";
    e.y = @"0";
    e.isUpdated = @"NO";
    return e;
}
+(NSArray *)arrFromArr:(NSArray *)_arr{
    NSMutableArray *arr = [NSMutableArray new];
    for (NSString *s in _arr) {
        [arr addObject:[EntityEffect dataWithUrl:s]];
    }
    return arr;
}
@end
