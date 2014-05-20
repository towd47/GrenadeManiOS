//
//  Bomb.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Bomb.h"

@implementation Bomb

-(id)init
{
    self = [super init];
    self = [Bomb spriteNodeWithTexture: SPRITES_TEX_BOMB];
    self.xScale =0.3;
    self.yScale = 0.3;
    self.position = CGPointMake(100, 250);
    return self;
    
}

@end
