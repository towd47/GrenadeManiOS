//
//  TAJViewController.m
//  GrenadeManiOS
//
//  Created by Tom on 5/1/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "ViewController.h"
#import "GameScene.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
    SKView *spriteView = (SKView *) self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsFPS = YES;

    SKScene * scene = [GameScene sceneWithSize:spriteView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    [spriteView presentScene:scene];

    
    
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
