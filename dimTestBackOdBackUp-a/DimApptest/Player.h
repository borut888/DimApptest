//
//  Player.h
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Player : NSObject



@property (nonatomic,strong) NSString *playerID;
@property (nonatomic,strong) NSString *playerName;
@property (nonatomic,strong) NSString *playerNation;
@property (nonatomic,strong) NSString *playerAge;
@property (nonatomic,strong) NSString *playerPosition;
@property (nonatomic,strong) NSString *playerNumber;
@property (nonatomic,strong) NSString *playerDominantHand;
@property (nonatomic,strong) NSString *playerFieldPosition;
@property (nonatomic,strong) NSString *playerSpeed;
@property (nonatomic,strong) NSString *playerDefense;
@property (nonatomic,strong) NSString *playerAttack;
@property (nonatomic,strong) NSString *playerStrenght;
@property (nonatomic,strong) NSString *playerTehnique;
@property (nonatomic,strong) NSString *playerPunch;
@property (nonatomic,strong) NSString *playerPicWidth;
@property (nonatomic) NSString *playerImageUrl;
@property (nonnull,strong) UIImage *playerImage;


@end
