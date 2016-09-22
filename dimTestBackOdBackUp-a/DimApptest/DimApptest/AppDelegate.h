//
//  AppDelegate.h
//  DimApptest
//
//  Created by Borut on 10/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "MainWithSlideBAr.h"
#import "Root.h"
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UINavigationController *nav;
@property (strong, nonatomic) NSMutableDictionary *PlayerInfoArray;
@property (strong,nonatomic) Player *playerToShow;
@property (strong,nonatomic) NSMutableDictionary *PlayerMainInfo;
@property (strong,nonatomic) NSMutableArray *arrayOfIDsPlayer;
@property (strong,nonatomic) NSMutableArray *arrayOfPics;

@property (strong,nonatomic) NSMutableArray *arrayOfDefensivePlayers;
@property (strong,nonatomic) NSMutableArray *arrayOfGoolkeapers;
@property (strong,nonatomic) NSMutableArray *arrayOfMidfilders;
@property (strong,nonatomic) NSMutableArray *arrayOfAttacks;
@property (nonatomic) NSMutableArray *arrayOfWholePostions;
@property (strong,nonatomic) NSMutableArray *arrayOFUrlForTickets;
@end

