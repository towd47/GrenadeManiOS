//
//  IntroViewController.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/15/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroScene.h"
@interface IntroViewController ()

@end

@implementation IntroViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    /*SKView *introView = (SKView *) self.view;
    introView.showsDrawCount = YES;
    introView.showsNodeCount = YES;
    introView.showsFPS = YES;
    
    SKScene * scene = [IntroScene sceneWithSize:introView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    [introView presentScene:scene];*/
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    //if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
    //    return UIInterfaceOrientationMaskAllButUpsideDown;
    //} else {
    return UIInterfaceOrientationMaskLandscape;
    //}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


@end
