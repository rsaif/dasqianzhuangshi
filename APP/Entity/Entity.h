//
//  Entity.h
//  Base
//
//  Created by Justin on 14-7-18.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "ManagedObject.h"
#import <CoreData/CoreData.h>


@interface Entity : ManagedObject

@property (nonatomic, retain) NSString * cid;
@property (nonatomic, retain) NSString * name;

@end
