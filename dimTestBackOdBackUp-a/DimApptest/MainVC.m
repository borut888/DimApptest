//
//  MainVC.m
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "MainVC.h"
#import "LeftMenuTVC.h"
@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    
  
    self.leftMenu = [[LeftMenuTVC alloc] initWithNibName:@"LeftMenuTVC" bundle:nil];
    
    
    [super viewDidLoad];

}


#pragma mark - Overriding methods
- (void)configureLeftMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = (CGPoint){0,0};
    frame.size = (CGSize){40,40};
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"icon-menu.png"] forState:UIControlStateNormal];
}

- (BOOL)deepnessForLeftMenu
{
    return YES;
}

- (CGFloat)maxDarknessWhileRightMenu
{
    return 0.5f;
}

@end
