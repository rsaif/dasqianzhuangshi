//
//  PlaceAddressCell.h
//  outing
//
//  Created by tripbe on 13-1-11.
//  Copyright (c) 2013年 seavision. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceAddressCell : UITableViewCell
{
}
@property(nonatomic,retain)IBOutlet UIImageView *backimageView;
- (IBAction)detailClicked:(id)sender;
@end
