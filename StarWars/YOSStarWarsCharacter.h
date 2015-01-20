//
//  YOSStarWarsCharacter.h
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

@import Foundation;
@import UIKit;


@interface YOSStarWarsCharacter : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *alias;
@property (strong, nonatomic) NSURL *wikiPage;
@property (strong, nonatomic) UIImage *photo;
@property (strong, nonatomic) NSData *soundData; // Representa datos binarios

// Class methods

+(instancetype) starWarsWithName:(NSString*) pName alias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData;


+(instancetype) starWarsWithAlias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData;


// Designated
-(id) initWithName:(NSString*) pName alias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData;


-(id) initWithAlias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData;





@end
