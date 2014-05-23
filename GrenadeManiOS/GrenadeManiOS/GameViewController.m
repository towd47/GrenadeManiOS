//
//  TAJViewController.m
//  GrenadeManiOS
//
//  Created by Tom on 5/1/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

#import
@interface GameViewController ()
@property (nonatomic, strong) AVAudioPlayer *backgroundMusic
@end

@implementation GameViewController

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
    
NSURL *musicFile = [[NSBundle mainBundle] URLForResource:@"backgroundMusic"
                                           withExtension:@"wav"];
self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusic                                                              error:nil];
self.backgroundMusic.numberOfLoops = -1;
[self.backgroundMusic play];
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
