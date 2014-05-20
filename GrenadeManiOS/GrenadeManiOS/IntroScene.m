//
//  IntroScene.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "IntroScene.h"

@implementation IntroScene
-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"bg.png"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.xScale = 0.25;
        background.yScale = 0.25;
        Castle *castle = [[Castle alloc] init];
        
        [self addChild:background];
        [self addChild:castle];
    }
    return self;
}

@end
