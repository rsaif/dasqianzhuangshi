//
//  Service.h
//  contact
//
//  Created by wang shuguan on 13-11-27.
//  Copyright (c) 2013年 wang shuguan. All rights reserved.
//

#import "CGService.h"

@interface Service : CGService
-(CGDataResult *)getData;
//获取头部的数据
-(CGDataResult*)homeSlider;

//小区的主页的列biao
-(CGDataResult*)homelist;
//分类检索的数据
-(CGDataResult*)homebuliding;
//效果图
-(CGDataResult*)effect;
//效果分页图
-(CGDataResult*)effectCategory;
//效果图主页的
-(CGDataResult*)effectHomege;

//效果图检索获取
-(CGDataResult*)effectSousuo;
//效果图详情展示
-(CGDataResult*)effectdetailzhanshi:(NSString*)artile withTop:(NSString*)top;
//学装修滑动页
-(CGDataResult*)learnscrollview;

//学装修的列表
-(CGDataResult*)learntablelist;
//学装修的伸展也
-(CGDataResult*)learnphoto;
//设计师的列表
-(CGDataResult*)designerlist;
//设计师的详细资料
-(CGDataResult*)designerMessage;
//小区的主页户型tu
-(CGDataResult*)diagramdetail;
//小区楼盘图
-(CGDataResult*)Villagefloor;
//小区的样板间
-(CGDataResult*)VillagefloorModel;
//小区的户型图的展示
-(CGDataResult*)Villagesgtlist;
//用户的数据更新
-(CGDataResult*)userUpdates:(NSString*)userId withpass:(NSString*)userpass withNewpass:(NSString*)xinpass;

//用户数据更新资料
-(CGDataResult*)userUpdateinformation:(NSString*)usename withQq:(NSString*)tengxun withNickname:(NSString*)nicheng withAddress:(NSString*)adress;

//用户登录；
-(CGDataResult*)userloginWithname:(NSString*)name withPass:(NSString*)pass;
//用户注册；
-(CGDataResult*)useregisterWithname:(NSString*)name withPassword:(NSString*)password;
//注册手机验证
-(CGDataResult*)extistable:(NSString*)phone;
//发送短信；
-(CGDataResult*)mobileWithname:(NSString*)mobile;








@end
