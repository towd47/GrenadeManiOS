//
//  Explosion.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Explosion.h"

@implementation Explosion
-(id)init
{
    self = [super init];
    explode = [SKAction animateWithTextures:SPRITES_ANIM_EXPLOSION_EXPLOSION timePerFrame:0.2];
    self = [Explosion spriteNodeWithTexture: SPRITES_TEX_EXPLOSION_EXPLOSION1];
    self.xScale =1;
    self.yScale = 1;
    return self;
}

@end
