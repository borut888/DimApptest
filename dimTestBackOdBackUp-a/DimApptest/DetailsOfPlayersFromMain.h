//
//  DetailsOfPlayersFromMain.h
//  DimApptest
//
//  Created by Borut on 16/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface DetailsOfPlayersFromMain : UIViewController

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

@property (nonatomic,strong) AppDelegate *appDelegate;
@property (nonatomic,strong) IBOutlet UILabel *LblForPlayerName;
@property (nonatomic,strong) IBOutlet UIImageView *imgForPlayerImage;
@property (nonatomic,strong) NSString *forTransferingName;
@property (nonatomic,strong) NSString *forTransferingImage;
@property (nonatomic,strong) IBOutlet UILabel *lblForPlayeNumber;
@property (nonatomic,strong) NSString *forTransferingNumberOFplayerDress;



@property (strong, nonatomic) IBOutlet UILabel *lblForPlayerNationality;
@property (strong,nonatomic) NSString *forTransferingPlayerNationaily;

@property (strong,nonatomic) IBOutlet UILabel *lblPlayerAge;
@property (strong,nonatomic) NSString *forTransferingPlayerAge;

@property (strong,nonatomic) IBOutlet UILabel *lblPlayerPosition;
@property (strong,nonatomic) NSString *forTransferingPlayerPosition;

@property (strong,nonatomic) IBOutlet UILabel *lblPlayerDominantHand;
@property (strong,nonatomic) NSString *ForTransferingPlayerDominantHand;

@property (strong,nonatomic) IBOutlet UIImageView *ImgDefence;
@property (strong, nonatomic) IBOutlet UILabel *lblDefence;
@property (strong,nonatomic) NSString *forTransferingDefence;

@property (strong,nonatomic) IBOutlet UILabel *lblPlayerStrenght;
@property (strong,nonatomic) NSString *forTransferingPlayerStrenght;
@property (strong,nonatomic) IBOutlet UIImageView *imgPlayerStrenght;

@property (strong,nonatomic) IBOutlet UIImageView *imgPlayerSpeed;
@property (strong,nonatomic) NSString *forTransferingPlayerSpeed;
@property (strong,nonatomic) IBOutlet UILabel *lblPlayerSpeed;

@property (strong,nonatomic) IBOutlet UIImageView *imgPlayerTehnique;
@property (strong,nonatomic) NSString *forTransferingPlayerTehnique;
@property (strong,nonatomic) IBOutlet UILabel *lblPlayerTehnique;

@property (strong,nonatomic) IBOutlet UIImageView *imgForAttack;
@property (strong,nonatomic) NSString *forTransferingPlayerAttack;
@property (strong,nonatomic) IBOutlet UILabel *lblPlayerAttack;

@property (strong,nonatomic) IBOutlet UIImageView *imgForPunch;
@property (strong,nonatomic) NSString *forTransferingPlayerPunch;
@property (strong,nonatomic) IBOutlet UILabel *lblPlayerPunch;

@property (strong,nonatomic) IBOutlet UIButton *BtnBackDown;


@property(weak,nonatomic) IBOutlet UILabel *nationalidad;
@property(weak,nonatomic) IBOutlet UILabel *edad;
@property(weak,nonatomic) IBOutlet UILabel *position;
@property(weak,nonatomic) IBOutlet UILabel *piernaHabib;
@property(weak,nonatomic) IBOutlet UILabel *label;
@property(weak,nonatomic) IBOutlet UILabel *habilidades;
@property(weak,nonatomic) IBOutlet UILabel *defence;
@property(weak,nonatomic) IBOutlet UILabel *strenght;
@property(weak,nonatomic) IBOutlet UILabel *speed;
@property(weak,nonatomic) IBOutlet UILabel *tehnique;
@property(weak,nonatomic) IBOutlet UILabel *attack;
@property(weak,nonatomic) IBOutlet UILabel *punch;
@end
