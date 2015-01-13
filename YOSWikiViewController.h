//
//  YOSWikiViewController.h
//  StarWars
//
//  Created by Yosnier on 13/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YOSStarWarsCharacter.h"

@interface YOSWikiViewController : UIViewController<UIWebViewDelegate>

@property(strong, nonatomic) YOSStarWarsCharacter *model;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIWebView *browser;

// Designated
-(id) initWithModel:(YOSStarWarsCharacter*) model;

@end
