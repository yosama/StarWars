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


-(id) init{
    
    
    
    if (self = [super init]){
        
        //crear personajes
        
        NSBundle *bundle = [NSBundle mainBundle];
        
        NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
        
        
        NSURL *vaderSoundURL = [bundle URLForResource:@"vader"
                                        withExtension:@"caf"];
        NSData *vaderSound = [NSData dataWithContentsOfURL:vaderSoundURL];
        
        UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
        
        
        
        YOSStarWarsCharacter *vader = [YOSStarWarsCharacter StarWarsWithName:@"Anakin SkyWalker"
                                                                       alias:@"Darth Vader"
                                                                    wikiPage:vaderURL
                                                                       photo:vaderImage
                                                                   soundData:vaderSound];
        
        
        // C3-PO
        
        NSURL *c3poURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
        
        NSURL *c3poSoundURL = [bundle URLForResource:@"c3po"
                                       withExtension:@"caf"];
        NSData *c3poSound = [NSData dataWithContentsOfURL:c3poSoundURL];
        
        UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
        
        
        
        YOSStarWarsCharacter *c3po = [YOSStarWarsCharacter StarWarsWithAlias:@"C -3PO"
                                                                    wikiPage:c3poURL                                                                   photo:c3poImage
                                                                   soundData:c3poSound];
        
        // R2
        
        NSURL *r2URL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
        
        NSURL *r2SoundURL = [bundle URLForResource:@"r2-d2"
                                     withExtension:@"caf"];
        NSData *r2Sound = [NSData dataWithContentsOfURL:r2SoundURL];
        
        UIImage *r2Image = [UIImage imageNamed:@"R2-D2.jpg"];
        
        
        
        YOSStarWarsCharacter *r2 = [YOSStarWarsCharacter StarWarsWithAlias:@"R2"
                                                                  wikiPage:r2URL                                                                   photo:r2Image
                                                                 soundData:r2Sound];
        
        
        
        //Chewie
        
        NSURL *chewieURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
        
        NSURL *chewieSoundURL = [bundle URLForResource:@"chewbacca"
                                         withExtension:@"caf"];
        NSData *chewieSound = [NSData dataWithContentsOfURL:chewieSoundURL];
        
        UIImage *chewieImage = [UIImage imageNamed:@"chewbacca.jpg"];
        
        
        
        YOSStarWarsCharacter *chewbacca = [YOSStarWarsCharacter StarWarsWithAlias:@"Chewbacca"
                                                                         wikiPage:chewieURL                                                                   photo:chewieImage
                                                                        soundData:chewieSound];
        

        self.rebels = @[c3po,r2,chewbacca];
        self.imperials = @[vader];
        
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

-(NSUInteger) rebelsCount{
    
    return [self.rebels count];
}

-(NSUInteger) imperialsCount{
    
    return [self.imperials count];
}


@end
