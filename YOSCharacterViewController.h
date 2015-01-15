//
//  YOSCharacterViewController.h
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//


@import UIKit;
#import "YOSStarWarsCharacter.h"
#import "CafPlayer.h"
#import "YOSStarWarsUniverseViewController.h"



@interface YOSCharacterViewController : UIViewController <UISplitViewControllerDelegate,YOSStarWarsUniverseViewControllerDelegate>


@property (strong, nonatomic) YOSStarWarsCharacter *model;
@property (weak, nonatomic) IBOutlet UIImageView *imPhoto;
@property (strong, nonatomic) NSData *soundData;
@property (strong, nonatomic) CafPlayer *player;


-(id) initWithModel:(YOSStarWarsCharacter *)model;

-(IBAction)playSound:(id)sender;
-(IBAction)displayWikipedia:(id)sender;



@end
