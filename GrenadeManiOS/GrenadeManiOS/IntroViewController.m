//
//  IntroViewController.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/15/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "IntroViewController.h"
@interface IntroViewController ()

@end

@implementation IntroViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Configure the view.
    // Create and configure the scene.
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
