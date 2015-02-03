//
//  YOSStarWarsCharacter.m
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSStarWarsCharacter.h"

@implementation YOSStarWarsCharacter



+(instancetype) starWarsWithName:(NSString*) pName alias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData {
    
    return  [[self alloc]initWithName:pName
                                alias:pAlias
                             wikiPage:pWikiPage
                                photo:pPhoto
                            soundData:pSoundData];
}



+(instancetype) starWarsWithAlias:(NSString *)pAlias wikiPage:(NSURL *)pWikiPage photo:(UIImage *)pPhoto soundData:(NSData *)pSoundData {
   
    return  [[self alloc]initWithAlias:pAlias
                             wikiPage:pWikiPage
                                photo:pPhoto
                            soundData:pSoundData];
}



-(id) initWithName:(NSString*) pName alias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData {
   
    if (self = [super init ]) {
        _name = pName;
        _alias = pAlias;
        _wikiPage = pWikiPage;
        _photo = pPhoto;
        _soundData = pSoundData;
    }
    
    return self;
    
}



-(id) initWithAlias:(NSString*) pAlias wikiPage:(NSURL*) pWikiPage photo: (UIImage*) pPhoto soundData: (NSData*) pSoundData {
  
    return [self initWithName:nil
                        alias:pAlias
                     wikiPage:pWikiPage
                        photo:pPhoto
                    soundData:pSoundData];
}


@end
