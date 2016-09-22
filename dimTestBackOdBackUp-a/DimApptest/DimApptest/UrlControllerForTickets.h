//
//  UrlControllerForTickets.h
//  DimApptest
//
//  Created by Borut on 25/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface UrlControllerForTickets : UIViewController

@property (nonatomic,strong) IBOutlet UIWebView *WebViewForTickets;
@property (nonatomic, weak) AppDelegate *appDelegate;
@end
