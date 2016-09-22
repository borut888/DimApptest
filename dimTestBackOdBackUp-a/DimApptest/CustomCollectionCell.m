//
//  CustomCollectionCell.m
//  DimApptest
//
//  Created by Borut on 16/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "CustomCollectionCell.h"

@implementation CustomCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    if ( IDIOM == IPAD ) {
        self.PicForShow.frame = CGRectMake(0,24,314,344);
        self.lblForShow.frame = CGRectMake(-15,367,339,33);
        self.lblPlayerNumber.frame = CGRectMake(8,0,42,23);
        [[self lblForShow] setFont:[UIFont systemFontOfSize:17]];
        [[self lblPlayerNumber] setFont:[UIFont systemFontOfSize:19]];
    }

    if(IS_IPHONE_4_OR_LESS)
    {
        self.PicForShow.frame = CGRectMake(0,0,151,125);
        self.lblForShow.frame = CGRectMake(-6,118,151,32);
        self.lblPlayerNumber.frame = CGRectMake(0,8,42,23);
        [[self lblForShow] setFont:[UIFont systemFontOfSize:11]];
        [[self lblPlayerNumber] setFont:[UIFont systemFontOfSize:15]];
    }
    if(IS_IPHONE_5)
    {
        self.PicForShow.frame = CGRectMake(-5,8,151,104);
        self.lblForShow.frame = CGRectMake(-6,109,151,32);
        self.lblPlayerNumber.frame = CGRectMake(0,8,42,23);
        [[self lblForShow] setFont:[UIFont systemFontOfSize:11]];
        [[self lblPlayerNumber] setFont:[UIFont systemFontOfSize:15]];
        
    }
    
    if(IS_IPHONE_6)
    {
    
    
    }

    

    
}


@end
