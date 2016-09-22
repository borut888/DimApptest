//
//  CustomCellForLeftMenu.m
//  DimApptest
//
//  Created by Borut on 19/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "CustomCellForLeftMenu.h"

@implementation CustomCellForLeftMenu

- (void)awakeFromNib {
    [super awakeFromNib];
   
    if ( IDIOM == IPAD ) {
        self.imgForMenuIcon.frame = CGRectMake(8,17,54,32);
        self.lblForMenuItemName.frame = CGRectMake (82,23,201,19);
    }
    
    if(IS_IPHONE_4_OR_LESS)
    {
        self.imgForMenuIcon.frame = CGRectMake(8,13,35,24);
        self.lblForMenuItemName.frame = CGRectMake (63,18,195,14);
    }
    if(IS_IPHONE_5)
    {
//        self.imgForMenuIcon.frame = CGRectMake(8,16,35,24);
//        self.lblForMenuItemName.frame = CGRectMake (51,21,195,19);
        self.lblForMenuItemName.font = [UIFont fontWithName:@"COCOGOOSE" size:13];
    }

    
}
@end
