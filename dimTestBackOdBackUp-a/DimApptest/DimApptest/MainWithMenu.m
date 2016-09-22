//
//  MainWithMenu.m
//  DimApptest
//
//  Created by Borut on 11/05/16.
//  Copyright © 2016 Borut. All rights reserved.
//

#import "MainWithMenu.h"
#import "Player.h"
#import "UIImageView+WebCache.h"
#import "DetailsOfPlayersFromMain.h"
#import "CustomCollectionReusableViewForMain.h"
#import "CustomReusableMain.h"
@interface MainWithMenu ()

@end

@implementation MainWithMenu
@synthesize appDelegate;

static NSString *reuse = @"CustomReusableMain";

- (void)viewDidLoad {
        [super viewDidLoad];
    
    [self.collViewForPicAndLbl registerNib:[UINib nibWithNibName:@"CustomCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"CELL"];
    
    [self.collViewForPicAndLbl registerNib:[UINib nibWithNibName:@"CustomReusableMain" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuse];
    
       self.equipue.backgroundColor = [self colorWithHexString:@"313A68"];
//    [_collViewForPicAndLbl registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
//    
//    [_collViewForPicAndLbl registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView"];
    
    [self.collViewForPicAndLbl setBackgroundColor:[UIColor whiteColor]];
    
    appDelegate = appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
    self.navigationController.navigationBar.barStyle  = UIBarStyleBlackOpaque;
    self.navigationController.navigationBar.barTintColor =[self colorWithHexString:@"E00614"];
    
        
    
    if ( IDIOM == IPAD ) {
        _collViewForPicAndLbl.frame = CGRectMake (0,144,320,433);
        [_collViewForPicAndLbl reloadData];
         self.equipue.frame = CGRectMake (0,66,320,40);
        
        UIImage *img = [UIImage imageNamed:@"officialLogo@2x.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [imgView setImage:img];
        // setContent mode aspect fit
        [imgView setContentMode:UIViewContentModeScaleAspectFit];
        self.navigationItem.titleView = imgView;

        
    }

    if(IS_IPAD)
    {
        NSLog(@"IS_IPAD");
    }
    if(IS_IPHONE)
    {
        NSLog(@"IS_IPHONE");
    }
    if(IS_RETINA)
    {
        NSLog(@"IS_RETINA");
    }
    if(IS_IPHONE_4_OR_LESS)
    {
        self.equipue.frame = CGRectMake (0,65,320,50);
        _collViewForPicAndLbl.frame = CGRectMake (0,108,320,460);
        [_collViewForPicAndLbl reloadData];
        
        UIImage *img = [UIImage imageNamed:@"officialLogo@1x.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [imgView setImage:img];
        // setContent mode aspect fit
        [imgView setContentMode:UIViewContentModeScaleAspectFit];
        self.navigationItem.titleView = imgView;

    }
    if(IS_IPHONE_5)
    {
        _collViewForPicAndLbl.frame = CGRectMake (0,108,320,454);
        [_collViewForPicAndLbl reloadData];
        self.equipue.frame = CGRectMake (0,66,320,40);
        
        UIImage *img = [UIImage imageNamed:@"officialLogo@2x.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [imgView setImage:img];
        // setContent mode aspect fit
        [imgView setContentMode:UIViewContentModeScaleAspectFit];
        self.navigationItem.titleView = imgView;
       
    }
    if(IS_IPHONE_6)
    {
        _collViewForPicAndLbl.frame = CGRectMake (0,114,320,448);
        [_collViewForPicAndLbl reloadData];
        self.equipue.frame = CGRectMake (0,65,320,40);
        
        UIImage *img = [UIImage imageNamed:@"officialLogo@2x.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [imgView setImage:img];
        // setContent mode aspect fit
        [imgView setContentMode:UIViewContentModeScaleAspectFit];
        self.navigationItem.titleView = imgView;

    }
    if(IS_IPHONE_6P)
    {
        NSLog(@"IS_IPHONE_6P");
    }
     
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ( IDIOM == IPAD ) {
        return CGSizeMake(300.0f, 400.0f);
        
    }
    if(IS_IPHONE_5)
    {
        return CGSizeMake(130.0f, 130.0f);
    }
    if(IS_IPHONE_4_OR_LESS)
    {
        return CGSizeMake(140.0f, 140.0f);
    }
    
    
    else
    {
        return CGSizeMake(150.0f, 160.0f);
    }
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    return [appDelegate.arrayOfWholePostions count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[appDelegate.arrayOfWholePostions objectAtIndex:section] count];
   
}



- (CustomCollectionCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
       
    
    
    
    CustomCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
   
       
    Player *PlayerID = (Player *)[[appDelegate.arrayOfWholePostions objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.lblPlayerNumber.text = PlayerID.playerNumber;
    
    NSURL *url = [NSURL URLWithString:PlayerID.playerImageUrl];
    [cell.PicForShow sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"placeholder.png"]];

    cell.lblForShow.text = PlayerID.playerName;
    cell.layer.shouldRasterize = YES;
    cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    Player *PlayerID = (Player *)[[appDelegate.arrayOfWholePostions objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    DetailsOfPlayersFromMain *OpenDetails = [[DetailsOfPlayersFromMain alloc]initWithNibName:@"DetailsOfPlayersFromMain" bundle:nil];
    
    OpenDetails.forTransferingName = PlayerID.playerName;
    OpenDetails.forTransferingImage = PlayerID.playerImageUrl;
    OpenDetails.forTransferingDefence = [NSString stringWithFormat:@" %@ %%", PlayerID.playerDefense];
    OpenDetails.forTransferingNumberOFplayerDress =[NSString stringWithFormat:@"# %@", PlayerID.playerNumber];
    OpenDetails.forTransferingPlayerNationaily = PlayerID.playerNation;
    OpenDetails.forTransferingPlayerAge = PlayerID.playerAge;
    OpenDetails.forTransferingPlayerPosition = PlayerID.playerPosition;
    OpenDetails.ForTransferingPlayerDominantHand = PlayerID.playerDominantHand;
    OpenDetails.forTransferingPlayerStrenght = [NSString stringWithFormat:@" %@ %%", PlayerID.playerStrenght];
    OpenDetails.forTransferingPlayerSpeed = [NSString stringWithFormat:@" %@ %%", PlayerID.playerSpeed];
    OpenDetails.forTransferingPlayerTehnique = [NSString stringWithFormat:@" %@ %%", PlayerID.playerTehnique];
    OpenDetails.forTransferingPlayerPunch = [NSString stringWithFormat:@" %@ %%", PlayerID.playerPunch];
    OpenDetails.forTransferingPlayerAttack =[NSString stringWithFormat:@" %@ %%", PlayerID.playerAttack];
    [self.navigationController pushViewController:OpenDetails animated:YES];
}




- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        CustomReusableMain *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuse forIndexPath:indexPath];
        [headerView setBackgroundColor:[self colorWithHexString:@"E00614"]];
        
        NSArray *lista = [NSArray arrayWithObjects:@"ARQUEROS", @"DEFENSAS", @"MEDIOCAMPITAS", @"DELANTEROS", nil];
        NSArray *listaSlika = [NSArray arrayWithObjects:@"icon_soccerfield_goalkeepers_2x.png", @"icon_soccerfield_defenders_2x.png", @"icon_soccerfield_midfielders_2x.png", @"icon_soccerfield_attackers_2x.png", nil];
       
        
        headerView.lblHeader.text = [lista objectAtIndex:indexPath.section];
        headerView.imgHeader.image = [UIImage imageNamed:listaSlika[indexPath.section]];
        
        reusableview=headerView;
    }
    
    if (kind == UICollectionElementKindSectionFooter) {
        
        UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        [footerview setBackgroundColor:[UIColor whiteColor]];
        
        reusableview = footerview;
    }
    
    return reusableview;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(300, 60);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);
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
