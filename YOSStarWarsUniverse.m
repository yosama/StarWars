//
//  YOSStarWarsUniverse.m
//  StarWars
//
//  Created by Yosnier on 14/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSStarWarsUniverse.h"

@interface YOSStarWarsUniverse ()

@property (strong, nonatomic) NSArray *rebels;
@property (strong, nonatomic) NSArray *imperials;

@end

@implementation YOSStarWarsUniverse

#pragma mark - Init

-(id) init
{
    
    if (self = [super init]){
        
        //crear personajes
        
        NSBundle *bundle = [NSBundle mainBundle];
        
        NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
        
        
        NSURL *vaderSoundURL = [bundle URLForResource:@"vader"
                                        withExtension:@"caf"];
        NSData *vaderSound = [NSData dataWithContentsOfURL:vaderSoundURL];
        
        UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
        
        YOSStarWarsCharacter *vader = [YOSStarWarsCharacter starWarsWithName:@"Anakin SkyWalker"
                                                                       alias:@"Darth Vader"
                                                                    wikiPage:vaderURL
                                                                       photo:vaderImage
                                                                   soundData:vaderSound];
        
        
        // C3-PO
        
        NSURL *c3poURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/C-3PO"];
        
        NSURL *c3poSoundURL = [bundle URLForResource:@"c3po"
                                       withExtension:@"caf"];
        NSData *c3poSound = [NSData dataWithContentsOfURL:c3poSoundURL];
        
        UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
        
        YOSStarWarsCharacter *c3po = [YOSStarWarsCharacter starWarsWithAlias:@"C -3PO"
                                                                    wikiPage:c3poURL                                                                   photo:c3poImage
                                                                   soundData:c3poSound];
        
        // R2
        
        NSURL *r2URL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/R2-D2"];
        
        NSURL *r2SoundURL = [bundle URLForResource:@"r2-d2"
                                     withExtension:@"caf"];
        NSData *r2Sound = [NSData dataWithContentsOfURL:r2SoundURL];
        
        UIImage *r2Image = [UIImage imageNamed:@"R2-D2.jpg"];
        
        YOSStarWarsCharacter *r2 = [YOSStarWarsCharacter starWarsWithAlias:@"R2-D2"
                                                                  wikiPage:r2URL                                                                   photo:r2Image
                                                                 soundData:r2Sound];
        
        
        
        //Chewie
        
        NSURL *chewieURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Chewbacca"];
        
        NSURL *chewieSoundURL = [bundle URLForResource:@"chewbacca"
                                         withExtension:@"caf"];
        NSData *chewieSound = [NSData dataWithContentsOfURL:chewieSoundURL];
        
        UIImage *chewieImage = [UIImage imageNamed:@"chewbacca.jpg"];
        
        YOSStarWarsCharacter *chewbacca = [YOSStarWarsCharacter starWarsWithAlias:@"Chewbacca"
                                                                         wikiPage:chewieURL                                                                   photo:chewieImage
                                                                        soundData:chewieSound];
        
        // Yoda
        
        NSURL *yodaURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Yoda"];
        
        NSURL *yodaSoundURL = [bundle URLForResource:@"yoda"
                                       withExtension:@"caf"];
        NSData *yodaSound = [NSData dataWithContentsOfURL:yodaSoundURL];
        
        UIImage *yodaImage = [UIImage imageNamed:@"yoda.jpg"];
        
        YOSStarWarsCharacter *yoda = [YOSStarWarsCharacter starWarsWithName:@"Minch Yoda"
                                                                      alias:@"Master Yoda"
                                                                   wikiPage:yodaURL
                                                                      photo:yodaImage
                                                                  soundData:yodaSound];
        
        // Palpatine
        
        NSURL *palpatineURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Palpatine"];
        
        NSURL *palpatineSoundURL = [bundle URLForResource:@"palpatine"
                                            withExtension:@"caf"];
        
        NSData *palpatineSound = [NSData dataWithContentsOfURL:palpatineSoundURL];
        
        UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg"];
        
        YOSStarWarsCharacter *palpatine = [YOSStarWarsCharacter starWarsWithName:@"Palpatine"
                                                                           alias:@"Darth Sidious"
                                                                        wikiPage:palpatineURL
                                                                           photo:palpatineImage
                                                                       soundData:palpatineSound];
        // Tarkin
        
        NSURL *tarkinURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Grand_Moff_Tarkin"];
        
        NSURL *tarkinSoundURL = [bundle URLForResource:@"tarkin"
                                         withExtension:@"caf"];
        NSData *tarkinSound = [NSData dataWithContentsOfURL:tarkinSoundURL];
        
        UIImage *tarkinImage = [UIImage imageNamed:@"tarkin.jpg"];
        
        YOSStarWarsCharacter *tarkin = [YOSStarWarsCharacter starWarsWithName:@"Wilhuf Tarkin"
                                                                        alias:@"Grand Moff Tarkin"
                                                                     wikiPage:tarkinURL
                                                                        photo:tarkinImage
                                                                    soundData:tarkinSound];
        
        
        self.rebels = @[c3po,r2,chewbacca,yoda];
        self.imperials = @[vader,tarkin,palpatine];
        
    }
    
    return self;
}


-(YOSStarWarsCharacter*) imperialCharacterAtIndex:(NSUInteger) index{
    
    return [self.imperials objectAtIndex:index];
    
}


-(YOSStarWarsCharacter*) rebelCharacterAtIndex:(NSUInteger) index{
    
    
    return [self.rebels objectAtIndex:index];
}


#pragma mark - Getter properties

-(NSUInteger) rebelCount{
    
    return [self.rebels count];
}

-(NSUInteger) imperialCount{
    
    return [self.imperials count];
}


@end
