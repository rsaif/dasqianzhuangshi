//
//  EntitydesigerMessage.h
//  Zhuangshi
//
//  Created by xhpmac on 14/10/30.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "EntityObject.h"
#import "EntitydesigerMessageSun.h"
@interface EntitydesigerMessage : EntityObject
{
}
@property(nonatomic,strong)NSString *title;
@property(nonatomic,strong)NSString *Img_url;
@property(nonatomic,strong)NSString *Zy_ln;
@property(nonatomic,strong)NSString *Zy_style;

@property(nonatomic,strong)EntitydesigerMessageSun *sun;
@property(nonatomic,strong)NSString *SunArry;

@end
