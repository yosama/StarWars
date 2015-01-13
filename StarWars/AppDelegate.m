//
//  AppDelegate.m
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "AppDelegate.h"
#import "YOSStarWarsCharacter.h"
#import "YOSCharacterViewController.h"
#import "YOSWikiViewController.h"



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Creamos una Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //Damos color a la ventana
    self.window.backgroundColor = [UIColor orangeColor];
    // La activamos
    [self.window makeKeyAndVisible];
    
    // controlador principal
    
//    
//    NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
//    
//    NSBundle *bundle = [NSBundle mainBundle];
//    
//    NSURL *soundURL = [bundle URLForResource:@"vader"
//                               withExtension:@"caf"];
//    NSData *vaderSound = [NSData dataWithContentsOfURL:soundURL];
//    
//    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
//    
//    
//    
//    YOSStarWarsCharacter *vader = [YOSStarWarsCharacter StarWarsWithName:@"Anakin SkyWalker"
//                                                                   alias:@"Darth Vader"
//                                                                wikiPage:vaderURL
//                                                                   photo:vaderImage
//                                                               soundData:vaderSound];
//
//    
//    YOSCharacterViewController *charVC = [[YOSCharacterViewController alloc] initWithModel:vader];
//    
//    YOSWikiViewController *wikiVC = [[YOSWikiViewController alloc] initWithModel:vader];
//    
//    UINavigationController *navigationVC = [[UINavigationController alloc] init];
//    [navigationVC pushViewController:charVC animated:NO];
    
    // Creamos los combinadores
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers: [self arrayOfControllers]];
    
    self.window.rootViewController = tabVC;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Buen momento para guardar datos
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    // Reducir al maximo el uso de memoria
    // NO USAR LA GPU
    // Desactivar todo lo que consume bateria (GPS,Mensajeria, reproductores de musica)
    
    
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}



- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



#pragma mark - Utils

-(NSArray*) arrayOfModels
{
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
    

//    //Yoda
//    
//    NSURL *yodaURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
//    
//    NSURL *yodaSoundURL = [bundle URLForResource:@"chewbacca"
//                                     withExtension:@"caf"];
//    NSData *yodaSound = [NSData dataWithContentsOfURL:chewieSoundURL];
//    
//    UIImage *yodaImage = [UIImage imageNamed:@"chewbacca.jpg"];
//    
//    
//    
//    YOSStarWarsCharacter *chewbacca = [YOSStarWarsCharacter StarWarsWithAlias:@"Chewbacca"
//                                                                     wikiPage:chewieURL                                                                   photo:chewieImage
//                                                                    soundData:chewieSound];
    
    
    return @[vader,chewbacca,r2,c3po];
    
    
}


-(NSArray*) arrayOfControllers{
    
    NSArray *models = [self arrayOfModels];
    
    NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:[models count]];
    
    for ( YOSStarWarsCharacter *character in models ){
        
        YOSCharacterViewController *charVC = [[YOSCharacterViewController alloc] initWithModel:character];
        
        UINavigationController *navVC = [[UINavigationController alloc]initWithRootViewController:charVC ];
        
        [controllers addObject:navVC];
    }
    
    return controllers;
}









@end
