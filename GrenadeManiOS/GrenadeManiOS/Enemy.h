//
//  Enemy.h
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Sprite.h"
#import "Castle.h"
#import "GameScene.h"
SKAction *walk;
SKAction *walkAnim;
SKAction *moveRight;
SKAction *moveLeft;
SKAction *mirrorDirection;
SKAction *resetDirection;
SKAction *walkAndMoveRight;
SKAction *walkAndMoveLeft;

@interface Enemy : Sprite

@end
