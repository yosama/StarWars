//
//  YOSCharacterViewController.m
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSCharacterViewController.h"
#import "CafPlayer.h"
#import "YOSWikiViewController.h"


@implementation YOSCharacterViewController


#pragma mark - Init


-(id) initWithModel:(YOSStarWarsCharacter *)model {
    
    if (self = [super initWithNibName:nil bundle:nil]){
        
        _model = model;
        self.title = model.alias;
        
    }
    
    return self;
}



- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self syncModelToView];
}



#pragma mark - Utils


- (void) syncModelToView {
    
    self.imPhoto.image = self.model.photo;
    self.title = self.model.alias;
    
}



#pragma mark - Actions

-(IBAction)playSound:(id)sender {
    
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
}



-(IBAction)displayWikipedia:(id)sender {
   
    // Creo un WebViewController
    YOSWikiViewController *wikiVC = [[YOSWikiViewController alloc]initWithModel:self.model ];
    
    // Le paso el webViewController al navigationController
    [self.navigationController pushViewController:wikiVC
                                         animated:YES];
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}



#pragma mark - UISplitViewControllerDelegate


-(void) splitViewController:(UISplitViewController *)svc willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode {
    
    if (displayMode == UISplitViewControllerDisplayModePrimaryHidden) {
        //Pongo boton en barra de navegacion
        self.navigationItem.rightBarButtonItem = svc.displayModeButtonItem;
        
    } else if (displayMode == UISplitViewControllerDisplayModeAllVisible) {
        // Quito boton de la barra de navegacion(pareado incluido)
        self.navigationItem.rightBarButtonItem = nil;
    }
}


- (void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc {
    
    self.navigationItem.rightBarButtonItem = barButtonItem;

}



#pragma mark - YOSStarWarsUniverseViewControllerDelegate

-(void)starWarsUniverseViewController:(YOSStarWarsUniverseViewController *)uVC didSelectCharacter:(YOSStarWarsCharacter *)character {
    
    // me dicen que cambie mi modelo
    self.model = character;
    [self syncModelToView];
}




@end
