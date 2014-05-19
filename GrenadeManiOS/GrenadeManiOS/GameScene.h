//
//  GameScene.h
//  GrenadeManiOS
//
//  Created by Mokacola on 5/15/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Sprites.h"
#import "Castle.h"
#import "Enemy.h"
Castle *castle;
@interface GameScene : SKScene

-(void)enemyCastleHit;

@end
