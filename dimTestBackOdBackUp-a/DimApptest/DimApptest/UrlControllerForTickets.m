//
//  UrlControllerForTickets.m
//  DimApptest
//
//  Created by Borut on 25/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "UrlControllerForTickets.h"
#import "MainWithMenu.h"

@interface UrlControllerForTickets ()

@end


@implementation UrlControllerForTickets

@synthesize appDelegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
   // NSString *urlTickets = appDelegate.arrayOFUrlForTickets;
    NSString *fullURL = @"http://vive.tuboleta.com/Content/Outlets/agencies_antioq.aspx";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_WebViewForTickets loadRequest:requestObj];

    self.navigationController.navigationBar.barStyle  = UIBarStyleBlackOpaque;
    self.navigationController.navigationBar.barTintColor =[self colorWithHexString:@"E00614"];
}



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



@end
