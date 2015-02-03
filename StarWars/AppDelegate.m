//
//  AppDelegate.m
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//


#import "AppDelegate.h"
#import "YOSStarWarsUniverse.h"
#import "YOSStarWarsUniverseViewController.h"
#import "YOSCharacterViewController.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Creamos una Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //Compruebo el tipo de pantalla
    if ([[UIDevice currentDevice] userInterfaceIdiom]== UIUserInterfaceIdiomPad){
        // caso para ipad
        [self conigureForIpad];
    } else{
        // caso Iphone
        [self conigureForIphone];
    }
    
    // La activamos
    [self.window makeKeyAndVisible];
    
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



#pragma mark - Configuration


-(void)conigureForIpad {
    
    // Creo el modelo
    YOSStarWarsUniverse *model = [[YOSStarWarsUniverse alloc]init];
    
    //Creo el controlador
    YOSStarWarsUniverseViewController *universeVC = [[YOSStarWarsUniverseViewController alloc]
                                                     initWithModel:model
                                                     style:UITableViewStylePlain];
    
    YOSCharacterViewController *charcVC = [[YOSCharacterViewController alloc]
                                           initWithModel:[model imperialCharacterAtIndex:0]];
    
    // Creo los combinadores
    UINavigationController *tableNav = [[UINavigationController alloc] init];
    [tableNav pushViewController:universeVC
                        animated:NO];
    
    UINavigationController *charNav = [[UINavigationController alloc] init];
    [charNav pushViewController:charcVC
                       animated:NO];
    
    // Le paso al splitVC los combinadores creados
    UISplitViewController *splitVC = [[UISplitViewController alloc] init];
    [splitVC setViewControllers:@[tableNav,charNav]];
    
    // Asigno el delegado
    splitVC.delegate = charcVC;
    universeVC.delegate = charcVC;
    
    self.window.rootViewController = splitVC;
}



-(void)conigureForIphone {
    
    // Crear el modelo
     YOSStarWarsUniverse *model = [[YOSStarWarsUniverse alloc]init];
    
    //Crear controlador
    YOSStarWarsUniverseViewController *universeVC = [[YOSStarWarsUniverseViewController alloc]initWithModel:model
                                                                                                      style:UITableViewStylePlain];
    
    // Crear combinador
    UINavigationController *navVC = [[UINavigationController alloc]init];
    [navVC pushViewController:universeVC
                     animated:NO];
    
    universeVC.delegate = universeVC;
    self.window.rootViewController = navVC;
    
}

@end
