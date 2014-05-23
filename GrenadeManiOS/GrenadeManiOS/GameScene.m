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
Bomb *bomb;
Explosion *explosion;
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
        
        bomb = [[Bomb alloc]init];
        
        [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(bombExplosion) userInfo: nil repeats:NO];
        
        [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(gameUpdate) userInfo: nil repeats:YES];
        
        [self addChild:background];
        
        [self addChild:castle];
        [self addChild:enemy];
        [self addChild:bomb];
        [enemy runAction:walkAndMoveLeft];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path,NULL,50.0,120.0);
    
    CGPathAddCurveToPoint(path,NULL,50.0,275.0,
                          150.0,275.0,
                          150.0,120.0);
    CGPathAddCurveToPoint(path,NULL,150.0,275.0,
                          250.0,275.0,
                          250.0,120.0);
    CGPathAddCurveToPoint(path,NULL,250.0,275.0,
                          350.0,275.0,
                          350.0,120.0);
    CGPathAddCurveToPoint(path,NULL,350.0,275.0,
                          450.0,275.0,
                          450.0,120.0);
    
    CAKeyframeAnimation* AniLoc = [CAKeyframeAnimation animationWithKeyPath:@"position"];     
    AniLoc.path = bombPath;
    AniLoc.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    AniLoc.keyTimes= [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0f],
                      [NSNumber numberWithFloat:0.3f],
                      [NSNumber numberWithFloat:1.0f],nil];
    AniLoc.duration = 2.0;
    
    CFRelease(bombPath);
    
    [self.logo.layer addAnimation:AniLoc forKey:nil];
    
    
}

-(void)bombExplosion
{
    [bomb removeFromParent];
    explosion = [[Explosion alloc]init];
    explosion.position = bomb.position;
    [explosion runAction:explode completion:^{
        [explosion removeFromParent];
    }
     ];
    [self addChild:explosion];

}

-(void)gameUpdate
{
    [self enemyCastleHit];
}

-(void)enemyCastleHit
{
    if(enemy.position.x <= castle.position.x + castle.size.width/2)
    {
        [enemy removeFromParent];
    }
}

-(void)update:(CFTimeInterval)currentTime
{
    
}



@end
