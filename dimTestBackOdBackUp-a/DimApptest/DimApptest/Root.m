//
//  root.m
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "Root.h"
#import "RXMLElement.h"
#import "MainWithMenu.h"
#import "LeftMenuTVC.h"
#import "Button.h"
#import "PlayerPicture.h"
@interface Root ()

@end

@implementation Root

- (void)viewDidLoad {
    
    
    [self.navigationItem setHidesBackButton:YES];
    
    [super viewDidLoad];
    
   [self DownloadAndParse];
    
}

-(void) DownloadAndParse
{
    //dispatch_queue_t queVar= dispatch_queue_create("lets do this", NULL);
    
    
//    NSString *stringUrl = @"https://www.eclecticasoft.com/dim/content/DIM_Borut.xml";
//    NSURL *url = [NSURL URLWithString:stringUrl];
//    
//    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
//    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
    NSURL *URL = [NSURL URLWithString:@"https://www.eclecticasoft.com/dim/content/DIM_Borut.xml"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
        
        RXMLElement *root = [RXMLElement elementFromXMLData:data];
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        CGFloat screenWidth = screenRect.size.width;
     //   CGFloat screenHeight = screenRect.size.height;
       int bla = (int)[[UIScreen mainScreen] nativeBounds].size.width;
        NSLog(@"bla: %i", bla);
        [root iterate:@"playerInfo.singlePlayer" usingBlock: ^(RXMLElement *sbElement) {
            
            Player *playerInfo = [[Player alloc]init];
            
            playerInfo.playerID = [sbElement child:@"playerID"].text;
            playerInfo.playerName = [sbElement child:@"playerName"].text;
            playerInfo.playerNation = [sbElement child:@"playerNation"].text;
            playerInfo.playerAge = [sbElement child:@"playerAge"].text;
            playerInfo.playerPosition = [sbElement child:@"playerPosition"].text;
            playerInfo.playerNumber = [sbElement child:@"playerNumber"].text;
            playerInfo.playerDominantHand = [sbElement child:@"playerDominantHand"].text;
            playerInfo.playerFieldPosition = [sbElement child:@"playerFieldPos"].text;
            
            RXMLElement *playerStats = [sbElement child:@"playerStats"];
            playerInfo.playerSpeed = [playerStats child:@"Speed"].text;
            playerInfo.playerDefense = [playerStats child:@"Defense"].text;
            playerInfo.playerAttack = [playerStats child:@"Attack"].text;
            playerInfo.playerStrenght = [playerStats child:@"Strength"].text;
            playerInfo.playerTehnique = [playerStats child:@"Technique"].text;
            playerInfo.playerPunch = [playerStats child:@"Punch"].text;
            
            
            RXMLElement *playerPictures = [sbElement child:@"playerPictures"];
           
           
            
            [playerPictures iterate:@"prevPicture" usingBlock: ^(RXMLElement *prevPicture) {
                
                NSString *playerPicWIdth = [ prevPicture attribute:@"picWidth"];
                playerInfo.playerPicWidth = playerPicWIdth;
                if (screenWidth <= 768 && [playerPicWIdth isEqualToString:@"768"]) {
                    NSString *slika = [prevPicture attribute:@"picURL"];
                    playerInfo.playerImageUrl = slika;
                }
                else if (screenWidth > 768 && screenWidth <= 1080 && [playerPicWIdth isEqualToString:@"1080"] ) {
                    NSString *slika = [prevPicture attribute:@"picURL"];
                    playerInfo.playerImageUrl = slika;
                }
                else if (screenWidth > 1080 && screenWidth <= 1280 && [playerPicWIdth isEqualToString:@"1280"]) {
                    NSString *slika = [prevPicture attribute:@"picURL"];
                    playerInfo.playerImageUrl = slika;
                }
                else if (screenWidth > 1280 && [playerPicWIdth isEqualToString:@"1280"]) {
                    NSString *slika = [prevPicture attribute:@"picURL"];
                    playerInfo.playerImageUrl = slika;
                }
 //              PlayerPicture *playerPicsAndOtherInfo = [[PlayerPicture alloc]init];
 //              playerPicsAndOtherInfo.picUrl = [prevPicture attribute:@"picURL"];

//                [prevPicture attribute:@"picWidth"];
//                [prevPicture attribute:@"picURL"];
                
            }];
            
            
            if ([playerInfo.playerPosition isEqualToString:@"Portero" ]) {
                [appDelegate.arrayOfGoolkeapers addObject:playerInfo];
            }
            else if ([playerInfo.playerPosition isEqualToString:@"Defensa" ]) {
                [appDelegate.arrayOfDefensivePlayers addObject:playerInfo];
            }
            else if ([playerInfo.playerPosition isEqualToString:@"Volante" ]) {
                [appDelegate.arrayOfMidfilders addObject:playerInfo];
            }
            else if ([playerInfo.playerPosition isEqualToString:@"Delantero" ]) {
                [appDelegate.arrayOfAttacks addObject:playerInfo];
            }

            
             
            [appDelegate.PlayerInfoArray setObject:playerInfo forKey:playerInfo.playerID];
        
            
             
        }];
        
        [root iterate:@"header.ticketsURL" usingBlock: ^(RXMLElement *UrlElement) {
            [appDelegate.arrayOFUrlForTickets addObject:UrlElement.text];
         }];
        
        
       //        for (NSString* key in appDelegate.PlayerInfoArray) {
//           // id value = [appDelegate.PlayerInfoArray objectForKey:key];
//            if ([key isEqualToString:@"Portero"]) {
//                [appDelegate.arrayOfIDsPlayer addObject:key];
//                            }
//                   }
        
//        [appDelegate.arrayOfWholePostions addObject:appDelegate.arrayOfGoolkeapers];
//        [appDelegate.arrayOfWholePostions addObject:appDelegate.arrayOfDefensivePlayers];
//        [appDelegate.arrayOfWholePostions addObject:appDelegate.arrayOfMidfilders];
//        [appDelegate.arrayOfWholePostions addObject:appDelegate.arrayOfAttacks];

        appDelegate.arrayOfWholePostions = [NSMutableArray arrayWithObjects:appDelegate.arrayOfGoolkeapers, appDelegate.arrayOfDefensivePlayers, appDelegate.arrayOfMidfilders,appDelegate.arrayOfAttacks, nil];
        
       
        [root iterate:@"playerInfo.*.playerID" usingBlock: ^(RXMLElement *Element) {
            
            [appDelegate.arrayOfIDsPlayer addObject:[Element text]];
            
        }];
        
        
           

     NSLog(@"Sports book name for id 19 is: %@\n", ((Player *)[appDelegate.PlayerInfoArray objectForKey:@"18"]).playerImageUrl);
        Button *viewController = [[Button alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
    }];
    
    
    
   // [task resume];
 }





-(void)ThreadForPic
{
  //  dispatch_queue_t queVar= dispatch_queue_create("lets do this", NULL);
    NSLog(@"second thread started");
    NSString *stringUrl = @"http://www.eclecticasoft.com/dim/content/DIM.xml";
    NSURL *url = [NSURL URLWithString:stringUrl];
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        
        
        
        RXMLElement *root = [RXMLElement elementFromXMLData:data];
        
        [root iterate:@"playerInfo.*.playerPictures.prevPicture" usingBlock:^(RXMLElement *ratingEl) {
            Player *playerInfo = [[Player alloc]init];
            
            NSString *slika = [ratingEl attribute:@"picURL"];
                            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:slika]];
                            UIImage *image = [UIImage imageWithData: data];
            
                            playerInfo.playerImage = image;
            
          //  playerInfo.playerImageUrl = slika;
            
            NSString *width = [ratingEl attribute:@"picWidth"];
            playerInfo.playerPicWidth = width;
            //  NSLog(@"slike: %@", playerInfo.playerImageUrl);
            
       
     }];
        
    }];
    NSLog(@"second thread stoped");
    [sessionDataTask resume];
    
}

@end
