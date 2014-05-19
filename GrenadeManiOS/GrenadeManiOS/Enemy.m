//
//  Enemy.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Enemy.h"

@implementation Enemy


-(id)init
{
    self = [super init];
    
    walk = [SKAction animateWithTextures:SPRITES_ANIM_ENEMY_STICKFIGURE timePerFrame:0.1];
    walkAnim = [SKAction sequence:@[walk, walk, walk, walk, walk, walk]];
    moveRight  = [SKAction moveToX:900 duration:walkAnim.duration];
    moveLeft   = [SKAction moveToX:castle.getWidth duration:walkAnim.duration];
    mirrorDirection  = [SKAction scaleXTo:-1 y:1 duration:0.0];
    resetDirection   = [SKAction scaleXTo:1  y:1 duration:0.0];
    walkAndMoveRight = [SKAction group:@[resetDirection,  walkAnim, moveRight]];
    walkAndMoveLeft  = [SKAction group:@[mirrorDirection, walkAnim, moveLeft]];
    
    SKTexture *texture =SPRITES_TEX_ENEMY_STICKFIGURE1;
    [self setTexture:texture];

    self.position = CGPointMake([UIScreen mainScreen].bounds.size.width + self.size.width, [UIScreen mainScreen].bounds.size.height/2.30);
    return self;
    
}

@end
