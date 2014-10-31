//
//  Service.m
//  contact
//
//  Created by wang shuguan on 13-11-27.
//  Copyright (c) 2013年 wang shuguan. All rights reserved.
//

#import "Service.h"
#import "Entity.h"
#import "EntityItem.h"
#import <CoreData+MagicalRecord.h>
@implementation Service


-(CGDataResult*)homeSlider

{
   
    
    self.request.timeOutSeconds = 10;
   
    NSString *methadName =@"findhouse_indexlist";
    
    NSString *four = [NSString stringWithFormat:@"%d",4];
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"sum":four} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
      
        return [CGDataResult getResultFromDic:dic className:
                @"EntityHomeSlide"];
       
    }];
}

-(CGDataResult*)homelist
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_goodslist";
    
  
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"category_id":@"",@"keyword":@"",@"order":@"",@"page":@"1",@"pagesize":@"10"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntityHomelist"];
        
    }];

}
-(CGDataResult*)homebuliding
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_category";
    
   
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"goods":@"goods"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntiyHomebuliding"];
        
    }];

}


-(CGDataResult*)effect
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xgt_li";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entityeffectguo"];
        
    }];

}
-(CGDataResult*)learnscrollview
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xzx_index";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"sum":@"3"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entitylearnshow"];
        
    }];

}
-(CGDataResult*)learntablelist
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"xzx_indexlist";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"category_id":@"",@"keyword":@"",@"order":@"",@"page":@"1",@"pagesize":@"2"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entitylearnlisttable"];
        
    }];

}
-(CGDataResult*)learnphoto
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xzx_category";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"photo":@"photo"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entitylearnphoto"];
        
    }];

}
-(CGDataResult*)designerMessage
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_person_show";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"article":@"7200"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntitydesigerMessage"];
        
    }];
}
-(CGDataResult*)designerlist
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_person_list";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"category_id":@"",@"keyword":@"",@"order":@"",@"page":@"1",@"pagesize":@"2",} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entitydesigner"];
        
    }];
    
}
-(CGDataResult*)diagramdetail
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_hx_list";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3",@"article":@"7175"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entitydigarmdetail"];
        
    }];
}
-(CGDataResult*)Villagefloor
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_album_list";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3",@"article":@"7175"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntitiyVillageFloor"];
        
    }];
 
}
-(CGDataResult*)VillagefloorModel
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_ybj_list";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3",@"article":@"7175"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntityVillageFloorModel"];
        
    }];

}
-(CGDataResult*)Villagesgtlist
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xgt_list";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3",@"article":@"7175"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntityVillageFloorModel"];
        
    }];
}
-(CGDataResult*)effectCategory
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xgt_category";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"xiaoguotu":@"xiaoguotu"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntityVillageFloorModel"];
        
    }];
}
-(CGDataResult*)effectHomege
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xgt_li";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"top":@"3"} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entityeffecthomepage"];
        
    }];
    
}
-(CGDataResult*)effectSousuo
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"index_xgt_list";
    
   
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"category_id":@"143",@"keyword":@"",@"order":@"",@"pager":@"1",@"pagesize":@"10",@"apartment":@"一居",} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"Entityeffectsousuo"];
        
    }];

    
}
-(CGDataResult*)effectdetailzhanshi:(NSString*)artile withTop:(NSString*)top
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"get_xgt_show";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"article":artile,@"top":top} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic className:
                @"EntitydetailZhangshi"];
        
    }];

}
-(CGDataResult*)userloginWithname:(NSString*)name withPass:(NSString*)pass
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"user_login";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"user_name":name,@"user_pass":pass} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];

}
-(CGDataResult*)useregisterWithname:(NSString*)name withPassword:(NSString*)password
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"user_register";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"username":name,@"password":password} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];

}
-(CGDataResult*)mobileWithname:(NSString*)mobile
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"user_register";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"mobile":mobile} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];
}

-(CGDataResult*)extistable:(NSString*)phone
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"exists_mobile";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"phone":phone} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];
}
-(CGDataResult*)userUpdates:(NSString*)userId withpass:(NSString*)userpass withNewpass:(NSString*)xinpass
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"user_updatepass";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"user_id":userId,@"user_pass":userpass,@"new_pass":xinpass} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];
}
-(CGDataResult*)userUpdateinformation:(NSString*)usename withQq:(NSString*)tengxun withNickname:(NSString*)nicheng withAddress:(NSString*)adress
{
    self.request.timeOutSeconds = 10;
    
    NSString *methadName =@"user_upuserinformation";
    
    
    
    NSString *parames = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:@{@"user_name":usename,@"nick_name":nicheng,@"qq":tengxun,@"address":adress} options:0 error:nil] encoding:NSUTF8StringEncoding];
    NSString *url = [NSString stringWithFormat:@"%@/CaseMethad?methodName=%@&parames=%@",ZWEBSEARCE,methadName,parames];
    
    return [self loadNetworkDataWithUrl:url complete:^CGDataResult *(NSData *data,NSString * str,NSMutableDictionary *dic) {
        
        return [CGDataResult getResultFromDic:dic];
    }];

}
//本地化操作
//+(NSArray *)getGoodsFromLocal{
//    NSUserDefaults  *settings = [NSUserDefaults standardUserDefaults];
//    NSMutableArray *arr = [NSMutableArray new];
//    for (NSData *d in [settings objectForKey:SHOPINGCHART_STR]) {
//        EntityGood *g = [NSKeyedUnarchiver unarchiveObjectWithData:d];
//        [arr addObject:g];
//    }
//    return arr;
//}
//+(BOOL)addGoodsToShoppingChart:(id)_good count:(NSString *)count{
//    EntityProduct *good = _good;
//    NSUserDefaults  *settings = [NSUserDefaults standardUserDefaults];
//    NSMutableArray *arr;
//    if([settings objectForKey:SHOPINGCHART_STR])
//        arr = [[settings objectForKey:SHOPINGCHART_STR] mutableCopy];
//    else arr = [NSMutableArray new];
//    NSData *data ;
//    int index = -1;
//    int i = 0;
//    for (NSData *s in arr) {
//        EntityGood *g = [NSKeyedUnarchiver unarchiveObjectWithData:s];
//        if ([g.product.currentSpec.Id isEqualToString:good.currentSpec.Id]) {
//            g.count = strFromNum(@(g.count.intValue+count.intValue));
//            index = i;
//            data = [NSKeyedArchiver archivedDataWithRootObject:g];
//        }
//        i++;
//    }
//    if (index<0) {
//        EntityGood *g = [[EntityGood alloc] Init];
//        g.product = good;
//        g.count = count;
//        [arr addObject:[NSKeyedArchiver archivedDataWithRootObject:g]];
//    }else{
//        [arr replaceObjectAtIndex:index withObject:data];
//    }
//    [settings setObject:arr forKey:SHOPINGCHART_STR];
//    return [settings synchronize];
//}
//+(BOOL)delGoodFromShoppingChart:(NSString *)specId{
//    NSUserDefaults  *settings = [NSUserDefaults standardUserDefaults];
//    NSMutableArray *arr;
//    if([settings objectForKey:SHOPINGCHART_STR])
//        arr = [[settings objectForKey:SHOPINGCHART_STR] mutableCopy];
//    else arr = [NSMutableArray new];
//    int index = -1;
//    int i = 0;
//    for (NSData *s in arr) {
//        EntityGood *g = [NSKeyedUnarchiver unarchiveObjectWithData:s];
//        if ([g.product.currentSpec.Id isEqualToString:specId]) {
//            index = i;
//        }
//        i++;
//    }
//    if (index>=0) {
//        [arr removeObjectAtIndex:index];
//    }
//    [settings setObject:arr forKey:SHOPINGCHART_STR];
//    return [settings synchronize];
//}

@end
