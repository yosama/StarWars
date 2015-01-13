//
//  YOSCharacterViewController.m
//  StarWars
//
//  Created by Yosnier on 12/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSCharacterViewController.h"
#import "CafPlayer.h"



@implementation YOSCharacterViewController


#pragma mark - Init

-(id) initWithModel:(YOSStarWarsCharacter *)model
{
    if (self = [super initWithNibName:nil bundle:nil]){
        
        _model = model;
        self.title = model.alias;
        
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    
    [self syncModelToView];
}


- (void) syncModelToView
{
    self.imPhoto.image = self.model.photo;
}


#pragma mark - Actions

-(IBAction)playSound:(id)sender{
    NSLog(@" I am your father!");
    
    self.player = [CafPlayer cafPlayer];
    [self.player playSoundData:self.model.soundData];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
