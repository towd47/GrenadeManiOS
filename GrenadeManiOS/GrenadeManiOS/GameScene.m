//
//  GameScene.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/15/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "GameScene.h"


@implementation GameScene
Enemy *enemy;
-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"bg.png"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.xScale = 0.25;
        background.yScale = 0.25;
        
        castle = [[Castle alloc] init];
        //[castle setTexture: SPRITES_TEX_CASTLE];
        
        enemy = [[Enemy alloc] init];
        //[enemy setTexture:SPRITES_TEX_ENEMY_STICKFIGURE1];
        
        [enemy runAction:walkAndMoveLeft];
        
        //[self addChild:background];
        
        [self addChild:castle];
         NSLog(@"Finished");
        [self addChild:enemy]; 
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
 
}

-(void)update:(CFTimeInterval)currentTime
{
    
}

-(void)enemyCastleHit
{
    if(enemy.position.x == castle.position.x + castle.size.width)
    {
        [enemy removeFromParent];
    }
}

@end
