//
//  MainWithMenu.h
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "RXMLElement.h"
#import "Player.h"
#import "CustomCollectionCell.h"
#import "AppDelegate.h"
#import "DetailsOfPlayersFromMain.h"

#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)



@interface MainWithMenu : UIViewController <UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collViewForPicAndLbl;
@property (nonatomic, weak) AppDelegate *appDelegate;
@property (strong, nonatomic) IBOutlet UILabel *equipue;
@end
