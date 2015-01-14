//
//  YOSStarWarsUniverse.h
//  StarWars
//
//  Created by Yosnier on 14/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

@import Foundation;
#import "YOSStarWarsCharacter.h"


@interface YOSStarWarsUniverse : NSObject

@property (readonly, nonatomic) NSUInteger imperialCount;
@property (readonly, nonatomic) NSUInteger rebelCount;

-(YOSStarWarsCharacter*) imperialCharacterAtIndex:(NSUInteger) index;
-(YOSStarWarsCharacter*) rebelCharacterAtIndex:(NSUInteger) index;

@end
