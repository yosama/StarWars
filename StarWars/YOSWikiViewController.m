//
//  YOSWikiViewController.m
//  StarWars
//
//  Created by Yosnier on 13/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSWikiViewController.h"
#import "YOSStarWarsUniverseViewController.h"


@interface YOSWikiViewController ()

@end

@implementation YOSWikiViewController



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


-(id) initWithModel:(YOSStarWarsCharacter*) model
{
    
    if (self = [super initWithNibName:nil bundle:nil]){
        
        _model = model;
        self.title =@"wikipedia";
    }
    return self;
}


// Aqui se crea la vista pero sus valores estan apuntan a nil
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

// La vista esta creada y ya esta lista para ser cargada
-(void) viewWillAppear:(BOOL)animated

{
    // Alta de las notificaciones
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    [nc addObserver:self selector:@selector(notifyThatCharacterDidChange:)
               name:CHARACTER_DID_CHANGE_CHANGE_NOTIFICATION_NAME
             object:nil];
    
    [super viewWillAppear:animated];
    
    //Asignamos el delegado
    self.browser.delegate = self;
    
    [self syncViewtoModel];
}


-(void) viewWillDisappear:(BOOL)animated{
     NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
}


#pragma mark - UIWebViewDelegate

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
    //[self.activityIndicator hidesWhenStopped];
    self.activityIndicator.hidden = YES;
}

-(BOOL) webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType{
    
    if (navigationType == UIWebViewNavigationTypeLinkClicked  ||
        navigationType == UIWebViewNavigationTypeFormSubmitted){
        return NO;
    } else{
        return YES;
    }
}


#pragma mark - Notification

-(void) notifyThatCharacterDidChange:(NSNotification*) n{
    //Estraigo el personaje
    YOSStarWarsCharacter *newModel = [n.userInfo objectForKey:CHARACTER_KEY];
    
    // Cambiar modelo
    self.model = newModel;
    
    //sincronizar vista
    [self syncViewtoModel];
    
}


-(void) syncViewtoModel{
    self.activityIndicator.hidden = NO;
    [self.activityIndicator startAnimating];
    NSURLRequest *r =[NSURLRequest requestWithURL:self.model.wikiPage];
    
    [self.browser loadRequest:r];
}
@end
