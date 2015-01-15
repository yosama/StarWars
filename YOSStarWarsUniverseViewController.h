//
//  YOSStarWarsUniverseViewController.h
//  StarWars
//
//  Created by Yosnier on 14/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//



#define REBEL_SECTION 1
#define IMPERIALS_SECTION 0
#define CHARACTER_DID_CHANGE_CHANGE_NOTIFICATION_NAME @"CHARACTER"
#define CHARACTER_KEY @"CHARACTERKEY"

@import UIKit;
#import "YOSStarWarsUniverse.h"

@class YOSStarWarsUniverseViewController;

@protocol YOSStarWarsUniverseViewControllerDelegate <NSObject>

@optional
-(void) starWarsUniverseViewController:(YOSStarWarsUniverseViewController*) uVC didSelectCharacter:(YOSStarWarsCharacter*)character;


-(void) starWarsUniverseViewController:(YOSStarWarsUniverseViewController*) uVC willSelectCharacter:(YOSStarWarsCharacter*)character;


@end



@interface YOSStarWarsUniverseViewController : UITableViewController

@property (weak,nonatomic) id<YOSStarWarsUniverseViewControllerDelegate> delegate;

-(id) initWithModel:(YOSStarWarsUniverse *)model
              style:(UITableViewStyle) style;

@end

