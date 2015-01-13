//
//  YOSWikiViewController.m
//  StarWars
//
//  Created by Yosnier on 13/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSWikiViewController.h"

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
    
    [super viewWillAppear:animated];
    
    self.browser.delegate = self;
    
    [self.browser loadRequest:[NSURLRequest requestWithURL:self.model.wikiPage]];
}


#pragma mark - UIWebViewDelegate

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
    [self.activityIndicator hidesWhenStopped];
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

@end
