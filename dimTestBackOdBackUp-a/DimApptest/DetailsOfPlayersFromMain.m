//
//  DetailsOfPlayersFromMain.m
//  DimApptest
//
//  Created by Borut on 16/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "DetailsOfPlayersFromMain.h"
#import "MainWithMenu.h"
#import "Player.h"
#import "UIImageView+WebCache.h"
@interface DetailsOfPlayersFromMain ()

@end

@implementation DetailsOfPlayersFromMain
@synthesize appDelegate,forTransferingName,forTransferingImage;
- (void)viewDidLoad {
    [super viewDidLoad];
    appDelegate = appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
   
      NSURL *url1 = [NSURL URLWithString:forTransferingImage];
      [self.imgForPlayerImage sd_setImageWithURL:url1 placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
    self.navigationController.navigationBar.barStyle  = UIBarStyleBlackOpaque;
    self.navigationController.navigationBar.barTintColor =[self colorWithHexString:@"E00614"];
    [self.piernaHabib sizeToFit];
    
    self.LblForPlayerName.text = forTransferingName;
    self.lblDefence.text = _forTransferingDefence;
    self.lblForPlayeNumber.text = _forTransferingNumberOFplayerDress;
    self.lblForPlayerNationality.text = _forTransferingPlayerNationaily;
    self.lblPlayerAge.text = _forTransferingPlayerAge;
    self.lblPlayerPosition.text = _forTransferingPlayerPosition;
    self.lblPlayerDominantHand.text = _ForTransferingPlayerDominantHand;
    //self.ImgDefence.image = [UIImage imageNamed:@"icon_shield_4x.png"];
   
   // self.imgPlayerStrenght.image = [UIImage imageNamed:@"icon_weights_4x.png"];
    self.lblPlayerStrenght.text = _forTransferingPlayerStrenght;
    
    //self.imgPlayerSpeed.image = [UIImage imageNamed:@"icon_lightning_4x.png"];
    self.lblPlayerSpeed.text = _forTransferingPlayerSpeed;
    
   // self.imgPlayerTehnique.image = [UIImage imageNamed:@"icon_shoe_4x.png"];
    self.lblPlayerTehnique.text = _forTransferingPlayerTehnique;
    
   // self.imgForAttack.image = [UIImage imageNamed:@"icon_crosshair_4x.png"];
    self.lblPlayerAttack.text = _forTransferingPlayerAttack;
    
  //  self.imgForPunch.image = [UIImage imageNamed:@"icon_ball_4x.png"];
    self.lblPlayerPunch.text = _forTransferingPlayerPunch;
    //self.imgForPlayerImage.image = image2;
    // Do any additional setup after loading the view from its nib.
    
    [self.view setBackgroundColor: [self colorWithHexString:@"313A68"]];
    self.label.backgroundColor = [self colorWithHexString:@"E00614"];
    UIImage *btnImage = [UIImage imageNamed:@"icon_back@3x.png"];
    [_BtnBackDown setImage:btnImage forState:UIControlStateNormal];
    
    [self.navigationItem setHidesBackButton:YES];
    
    if ( IDIOM == IPAD ) {
        self.imgForPlayerImage.frame = CGRectMake (-14,56,175,228);
        self.LblForPlayerName.frame = CGRectMake (154,61,144,20);
        self.lblForPlayeNumber.frame = CGRectMake (154,97,53,21);
        self.nationalidad.frame = CGRectMake (154,140,100,21);
        self.lblForPlayerNationality.frame = CGRectMake (154,159,62,21);
        self.edad.frame = CGRectMake (231,139,39,21);
        self.lblPlayerAge.frame = CGRectMake (231,159,42,21);
        self.position.frame = CGRectMake (154,205,65,21);
        self.lblPlayerPosition.frame = CGRectMake (154,227,79,21);
        self.piernaHabib.frame = CGRectMake (231,205,90,21);
        self.lblPlayerDominantHand.frame = CGRectMake (231,227,58,21);
        self.label.frame = CGRectMake (0,521,320,47);
        self.BtnBackDown.frame = CGRectMake (0,521,55,47);
        [[self LblForPlayerName] setFont:[UIFont boldSystemFontOfSize:32]];
        [[self lblForPlayeNumber] setFont:[UIFont boldSystemFontOfSize:28]];
        [[self nationalidad] setFont:[UIFont systemFontOfSize:19]];
        [[self lblForPlayerNationality] setFont:[UIFont boldSystemFontOfSize:23]];
        [[self edad] setFont:[UIFont systemFontOfSize:19]];
        [[self lblPlayerAge] setFont:[UIFont boldSystemFontOfSize:23]];
        [[self position] setFont:[UIFont systemFontOfSize:19]];
        [[self lblPlayerPosition] setFont:[UIFont boldSystemFontOfSize:23]];
        [[self piernaHabib] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerDominantHand] setFont:[UIFont boldSystemFontOfSize:23]];
        [[self label] setFont:[UIFont systemFontOfSize:17]];
        
        self.lblDefence.frame = CGRectMake (41,112,49,28);
        self.habilidades.frame = CGRectMake (54,17,212,36);
        [[self habilidades] setFont:[UIFont boldSystemFontOfSize:35]];
        self.ImgDefence.frame = CGRectMake (47,61,37,35);
        self.defence.frame = CGRectMake (29,95,73,22);
        self.imgPlayerStrenght.frame = CGRectMake (47,147,37,35);
        self.strenght.frame = CGRectMake (26,179,78,22);
        self.lblPlayerStrenght.frame = CGRectMake (41,198,49,21);
        self.imgPlayerSpeed.frame = CGRectMake (142,61,37,35);
        self.speed.frame = CGRectMake (121,95,78,22);
        self.lblPlayerSpeed.frame = CGRectMake (136,114,49,21);
        self.imgPlayerTehnique.frame = CGRectMake (142,147,37,35);
        self.tehnique.frame = CGRectMake (121,180,79,23);
        self.lblPlayerTehnique.frame = CGRectMake (136,198,49,21);
        self.imgForAttack.frame = CGRectMake (229,61,37,35);
        self.attack.frame = CGRectMake (208,95,78,23);
        self.lblPlayerAttack.frame = CGRectMake (223,115,49,21);
        self.imgForPunch.frame = CGRectMake (229,147,37,35);
        self.lblPlayerPunch.frame = CGRectMake (223,198,49,21);
        self.punch.frame = CGRectMake (223,181,49,22);
        
        [[self lblDefence] setFont:[UIFont systemFontOfSize:17]];
        [[self defence] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerStrenght] setFont:[UIFont systemFontOfSize:17]];
        [[self strenght] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerSpeed] setFont:[UIFont systemFontOfSize:17]];
        [[self speed] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerTehnique] setFont:[UIFont systemFontOfSize:17]];
        [[self tehnique] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerAttack] setFont:[UIFont systemFontOfSize:17]];
        [[self attack] setFont:[UIFont systemFontOfSize:18]];
        [[self lblPlayerPunch] setFont:[UIFont systemFontOfSize:17]];
        [[self punch] setFont:[UIFont systemFontOfSize:18]];
        
        self.ImgDefence.image = [UIImage imageNamed:@"icon_shield_4x.png"];
        self.ImgDefence.contentMode = UIViewContentModeScaleAspectFit;
        self.ImgDefence.clipsToBounds = YES;
        self.imgPlayerStrenght.image = [UIImage imageNamed:@"icon_weights_4x.png"];
        self.imgPlayerStrenght.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerSpeed.image = [UIImage imageNamed:@"icon_lightning_4x.png"];
        self.imgPlayerSpeed.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerTehnique.image = [UIImage imageNamed:@"icon_shoe_4x.png"];
        self.imgPlayerTehnique.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForAttack.image = [UIImage imageNamed:@"icon_crosshair_4x.png"];
        self.imgForAttack.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForPunch.image = [UIImage imageNamed:@"icon_ball_4x.png"];
        self.imgForPunch.contentMode = UIViewContentModeScaleAspectFit;

        
    }

    if(IS_IPHONE_5)
    {
        self.imgForPlayerImage.frame = CGRectMake (0,76,154,202);
        self.LblForPlayerName.frame = CGRectMake (154,76,158,42);
        self.LblForPlayerName.lineBreakMode = NSLineBreakByWordWrapping;
        self.LblForPlayerName.numberOfLines = 2;
        self.lblForPlayeNumber.frame = CGRectMake (154,111,53,22);
        self.nationalidad.frame = CGRectMake (154,140,95,21);
        self.lblForPlayerNationality.frame = CGRectMake (154,159,85,21);
        self.edad.frame = CGRectMake (242,140,39,21);
        self.lblPlayerAge.frame = CGRectMake (247,159,42,21);
        self.position.frame = CGRectMake (154,205,65,21);
        self.lblPlayerPosition.frame = CGRectMake (154,223,79,21);
        self.piernaHabib.frame = CGRectMake (242,205,70,21);
        self.piernaHabib.textAlignment = NSTextAlignmentLeft;
        [self.piernaHabib sizeToFit];
        self.lblPlayerDominantHand.frame = CGRectMake (242,223,79,21);
        self.label.frame = CGRectMake (0,521,320,47);
        self.BtnBackDown.frame = CGRectMake (0,521,55,47);
        [[self LblForPlayerName] setFont:[UIFont boldSystemFontOfSize:16]];
        [[self lblForPlayeNumber] setFont:[UIFont boldSystemFontOfSize:16]];
        [[self nationalidad] setFont:[UIFont systemFontOfSize:13]];
        [[self lblForPlayerNationality] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self edad] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerAge] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self position] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerPosition] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self piernaHabib] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerDominantHand] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self label] setFont:[UIFont systemFontOfSize:13]];
        
        self.lblDefence.frame = CGRectMake (41,112,49,28);
        self.habilidades.frame = CGRectMake (54,17,212,31);
        [[self habilidades] setFont:[UIFont boldSystemFontOfSize:29]];
        self.ImgDefence.frame = CGRectMake (47,61,37,35);
        self.defence.frame = CGRectMake (29,95,73,22);
        self.imgPlayerStrenght.frame = CGRectMake (47,147,37,35);
        self.strenght.frame = CGRectMake (26,179,78,22);
        self.lblPlayerStrenght.frame = CGRectMake (41,198,49,21);
        self.imgPlayerSpeed.frame = CGRectMake (142,61,37,35);
        self.speed.frame = CGRectMake (121,95,78,22);
        self.lblPlayerSpeed.frame = CGRectMake (136,114,49,21);
        self.imgPlayerTehnique.frame = CGRectMake (142,147,37,35);
        self.tehnique.frame = CGRectMake (121,180,79,23);
        self.lblPlayerTehnique.frame = CGRectMake (136,198,49,21);
        self.imgForAttack.frame = CGRectMake (229,61,37,35);
        self.attack.frame = CGRectMake (208,95,78,23);
        self.lblPlayerAttack.frame = CGRectMake (223,115,49,21);
        self.imgForPunch.frame = CGRectMake (229,147,37,35);
        self.lblPlayerPunch.frame = CGRectMake (223,198,49,21);
        self.punch.frame = CGRectMake (223,181,49,22);
        
        self.ImgDefence.image = [UIImage imageNamed:@"icon_shield_1x.png"];
        self.ImgDefence.contentMode = UIViewContentModeScaleAspectFit;
        self.ImgDefence.clipsToBounds = YES;
        self.imgPlayerStrenght.image = [UIImage imageNamed:@"icon_weights_1x.png"];
        self.imgPlayerStrenght.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerSpeed.image = [UIImage imageNamed:@"icon_lightning_1x.png"];
        self.imgPlayerSpeed.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerTehnique.image = [UIImage imageNamed:@"icon_shoe_1x.png"];
        self.imgPlayerTehnique.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForAttack.image = [UIImage imageNamed:@"icon_crosshair_1x.png"];
        self.imgForAttack.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForPunch.image = [UIImage imageNamed:@"icon_ball_1x.png"];
        self.imgForPunch.contentMode = UIViewContentModeScaleAspectFit;

        
    }
    
    if(IS_IPHONE_4_OR_LESS)
    {
        self.imgForPlayerImage.frame = CGRectMake (-6,86,163,185);
        self.LblForPlayerName.frame = CGRectMake (154,76,158,42);
        self.LblForPlayerName.lineBreakMode = NSLineBreakByWordWrapping;
        self.LblForPlayerName.numberOfLines = 2;
        self.lblForPlayeNumber.frame = CGRectMake (154,117,53,21);
        self.nationalidad.frame = CGRectMake (154,145,95,21);
        self.lblForPlayerNationality.frame = CGRectMake (154,169,85,21);
        self.edad.frame = CGRectMake (242,145,39,21);
        self.lblPlayerAge.frame = CGRectMake (242,169,42,21);
        self.position.frame = CGRectMake (154,218,65,21);
        self.lblPlayerPosition.frame = CGRectMake (154,234,79,21);
        self.piernaHabib.frame = CGRectMake (242,218,70,21);
        self.piernaHabib.textAlignment = NSTextAlignmentLeft;
        [self.piernaHabib sizeToFit];
        self.lblPlayerDominantHand.frame = CGRectMake (242,234,79,21);
        self.label.frame = CGRectMake (0,521,320,47);
        self.BtnBackDown.frame = CGRectMake (0,521,55,47);
        [[self LblForPlayerName] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self lblForPlayeNumber] setFont:[UIFont boldSystemFontOfSize:16]];
        [[self nationalidad] setFont:[UIFont systemFontOfSize:13]];
        [[self lblForPlayerNationality] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self edad] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerAge] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self position] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerPosition] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self piernaHabib] setFont:[UIFont systemFontOfSize:13]];
        [[self lblPlayerDominantHand] setFont:[UIFont boldSystemFontOfSize:14]];
        [[self label] setFont:[UIFont systemFontOfSize:13]];
        
        self.lblDefence.frame = CGRectMake (41,112,49,28);
        self.habilidades.frame = CGRectMake (54,17,212,31);
        [[self habilidades] setFont:[UIFont boldSystemFontOfSize:27]];
        self.ImgDefence.frame = CGRectMake (47,61,37,35);
        self.defence.frame = CGRectMake (29,95,73,22);
        self.imgPlayerStrenght.frame = CGRectMake (47,147,37,35);
        self.strenght.frame = CGRectMake (26,179,78,22);
        self.lblPlayerStrenght.frame = CGRectMake (41,198,49,21);
        self.imgPlayerSpeed.frame = CGRectMake (142,61,37,35);
        self.speed.frame = CGRectMake (121,95,78,22);
        self.lblPlayerSpeed.frame = CGRectMake (136,114,49,21);
        self.imgPlayerTehnique.frame = CGRectMake (142,147,37,35);
        self.tehnique.frame = CGRectMake (121,180,79,23);
        self.lblPlayerTehnique.frame = CGRectMake (136,198,49,21);
        self.imgForAttack.frame = CGRectMake (229,61,37,35);
        self.attack.frame = CGRectMake (208,95,78,23);
        self.lblPlayerAttack.frame = CGRectMake (223,115,49,21);
        self.imgForPunch.frame = CGRectMake (229,147,37,35);
        self.lblPlayerPunch.frame = CGRectMake (223,198,49,21);
        self.punch.frame = CGRectMake (223,181,49,22);
        
        [[self lblDefence] setFont:[UIFont systemFontOfSize:16]];
        [[self defence] setFont:[UIFont systemFontOfSize:15]];
        [[self lblPlayerStrenght] setFont:[UIFont systemFontOfSize:16]];
        [[self strenght] setFont:[UIFont systemFontOfSize:15]];
        [[self lblPlayerSpeed] setFont:[UIFont systemFontOfSize:16]];
        [[self speed] setFont:[UIFont systemFontOfSize:15]];
        [[self lblPlayerTehnique] setFont:[UIFont systemFontOfSize:16]];
        [[self tehnique] setFont:[UIFont systemFontOfSize:15]];
        [[self lblPlayerAttack] setFont:[UIFont systemFontOfSize:16]];
        [[self attack] setFont:[UIFont systemFontOfSize:15]];
        [[self lblPlayerPunch] setFont:[UIFont systemFontOfSize:16]];
        [[self punch] setFont:[UIFont systemFontOfSize:15]];
        
        self.ImgDefence.image = [UIImage imageNamed:@"icon_shield_1x.png"];
        self.ImgDefence.contentMode = UIViewContentModeScaleAspectFit;
        self.ImgDefence.clipsToBounds = YES;
        self.imgPlayerStrenght.image = [UIImage imageNamed:@"icon_weights_1x.png"];
        self.imgPlayerStrenght.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerSpeed.image = [UIImage imageNamed:@"icon_lightning_1x.png"];
        self.imgPlayerSpeed.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerTehnique.image = [UIImage imageNamed:@"icon_shoe_1x.png"];
        self.imgPlayerTehnique.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForAttack.image = [UIImage imageNamed:@"icon_crosshair_1x.png"];
        self.imgForAttack.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForPunch.image = [UIImage imageNamed:@"icon_ball_1x.png"];
        self.imgForPunch.contentMode = UIViewContentModeScaleAspectFit;
    }

    if(IS_IPHONE_6)
    {
        self.ImgDefence.image = [UIImage imageNamed:@"icon_shield_1x.png"];
        self.ImgDefence.contentMode = UIViewContentModeScaleAspectFit;
        self.ImgDefence.clipsToBounds = YES;
        self.imgPlayerStrenght.image = [UIImage imageNamed:@"icon_weights_1x.png"];
        self.imgPlayerStrenght.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerSpeed.image = [UIImage imageNamed:@"icon_lightning_1x.png"];
        self.imgPlayerSpeed.contentMode = UIViewContentModeScaleAspectFit;
        self.imgPlayerTehnique.image = [UIImage imageNamed:@"icon_shoe_1x.png"];
        self.imgPlayerTehnique.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForAttack.image = [UIImage imageNamed:@"icon_crosshair_1x.png"];
        self.imgForAttack.contentMode = UIViewContentModeScaleAspectFit;
        self.imgForPunch.image = [UIImage imageNamed:@"icon_ball_1x.png"];
        self.imgForPunch.contentMode = UIViewContentModeScaleAspectFit;
    }

}


// must method for using color in hex way
/////////////////////////////////////////////
-(UIColor*)colorWithHexString:(NSString*)hex
{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

-(IBAction)btnBack:(UIButton*)sender
{
   
    [self.navigationController popViewControllerAnimated:YES];
    
}




@end
