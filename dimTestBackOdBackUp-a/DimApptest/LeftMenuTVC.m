//
//  LeftMenuTVC.m
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "LeftMenuTVC.h"
#import "MainWithMenu.h"
#import "CustomCellForLeftMenu.h"
#import "UrlControllerForTickets.h"
@interface LeftMenuTVC ()

@end

@implementation LeftMenuTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableOfImages = [NSArray arrayWithObjects: @"menu__home.png", @"menu__live_scores", @"menu__news.png", @"menu__tv.png", @"menu__magazine.png", @"menu__store.png", @"menu__about.png", @"menu__squad.png", @"menu__social.png", @"menu__academy.png", @"menu__tickets.png",  @"menu__contact_us.png",nil];
    self.tableData = [@[@"INICIO", @"MARCADORES EN VIVO",@"NOTICIAS",@"DIM TV", @"REVISTA",@"TIENDA",@"ACERCA DE NOSOTROS",@"EQUIPO", @"SOCIAL", @"ACADEMIAS", @"BOLESTOS", @"CONTACTENOS"]mutableCopy];

    [self.LeftTableMenu registerNib:[UINib nibWithNibName:@"CustomCellForLeftMenu" bundle:nil] forCellReuseIdentifier:@"CustomCellForLeftMenu"];
    
    
    [self.LeftTableMenu setBackgroundColor: [self colorWithHexString:@"E00614"]];
    [self.MainView setBackgroundColor:[self colorWithHexString:@"E00614"]];
    self.ImageForMessage.image = [UIImage imageNamed:@"avatar__menu@2x.png"];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(lblClick:)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [_HolaVisitanteOnClikc addGestureRecognizer:tapGestureRecognizer];
    _HolaVisitanteOnClikc.userInteractionEnabled = YES;
    
    if ( IDIOM == IPAD ) {
        self.LeftTableMenu.rowHeight = 70;
        self.LeftTableMenu.contentSize = CGSizeMake(320,900);
        
    }
    else {
        self.LeftTableMenu.rowHeight = 56;
        self.LeftTableMenu.contentSize = CGSizeMake(50,50);
    }
    
    
    
}
#pragma mark - TableView Datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.tableData.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
//    if (!cell)
//    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
//    }
    
    CustomCellForLeftMenu *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CustomCellForLeftMenu class]) forIndexPath:indexPath];
    
    //cell.textLabel.text = self.tableData[indexPath.row];
    cell.backgroundColor = [self colorWithHexString:@"E00614"];
   // cell.imageView.image =  [UIImage imageNamed:[_tableOfImages objectAtIndex:indexPath.row]];
    cell.imgForMenuIcon.image =  [UIImage imageNamed:[_tableOfImages objectAtIndex:indexPath.row]];
    cell.lblForMenuItemName.text = self.tableData[indexPath.row];
    return cell;
    
}
#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UINavigationController *nvc;
    UIViewController *rootVc;
    
    switch (indexPath.row) {
        case 7:
        {
            rootVc = [[MainWithMenu alloc]initWithNibName:@"MainWithMenu" bundle:nil];
        }
            break;
        case 0:
        {
            rootVc = [[MainWithMenu alloc]initWithNibName:@"MainWithMenu" bundle:nil];
        }
            break;
        case 10:
        {
            rootVc = [[UrlControllerForTickets alloc]initWithNibName:@"UrlControllerForTickets" bundle:nil];
        }
            break;

    }
    nvc = [[UINavigationController alloc] initWithRootViewController:rootVc];
    [self openContentNavigationController:nvc];
}

//- (BOOL)deepnessForLeftMenu
//    {
//        return YES;
//    }

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


-(void)lblClick:(UITapGestureRecognizer *)tapGesture {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hola my good friend"
                                                    message:@"Have a nice day."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
