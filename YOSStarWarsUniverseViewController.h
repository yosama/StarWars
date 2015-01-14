//
//  YOSStarWarsUniverseViewController.h
//  StarWars
//
//  Created by Yosnier on 14/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//



#define REBEL_SECTION 1
#define IMPERIALS_SECTION 0

@import UIKit;
#import "YOSStarWarsUniverse.h"


@interface YOSStarWarsUniverseViewController : UITableViewController

-(id) initWithModel:(YOSStarWarsUniverse *)model
              style:(UITableViewStyle) style;

@end
