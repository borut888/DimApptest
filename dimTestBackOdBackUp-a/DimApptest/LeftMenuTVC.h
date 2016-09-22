//
//  LeftMenuTVC.h
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "AMSlideMenuLeftTableViewController.h"


#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad


@interface LeftMenuTVC : AMSlideMenuLeftTableViewController

#pragma - Outlets
@property (strong, nonatomic) IBOutlet UITableView *LeftTableMenu;
#pragma - Properties
@property (strong, nonatomic) NSArray *tableData;
@property (strong,nonatomic) NSArray *tableOfImages;
@property (strong,nonatomic) IBOutlet UIView *MainView;
@property (strong,nonatomic) IBOutlet UIImageView *ImageForMessage;
@property (strong,nonatomic) IBOutlet UILabel *HolaVisitanteOnClikc;
@property (strong,nonatomic) IBOutlet UILabel *separatorOnclikc;

@end
