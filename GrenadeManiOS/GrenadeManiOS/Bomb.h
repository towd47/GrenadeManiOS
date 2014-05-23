//
//  Bomb.h
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Sprite.h"
#import "Explosion.h"
#import "GameScene.h"
bool isExploding;
@interface Bomb : Sprite

-(bool)getExploding;
-(void)changeExploding:(bool)exploding;
@end
