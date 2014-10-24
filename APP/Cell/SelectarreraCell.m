//
//  SelectarreraCell.m
//  Zhuangshi
//
//  Created by xhpmac on 14-10-23.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "SelectarreraCell.h"

@implementation SelectarreraCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(IBAction)bttn:(id)sender;
{
    
   
        
    
    
       
    
    
   
   if ([self.delegate respondsToSelector:@selector(Sellectarrera:withbutton:)]) {
        [self.delegate Sellectarrera:self.indexpach withbutton:self.anniubtn];
       
    }
        
}
@end
