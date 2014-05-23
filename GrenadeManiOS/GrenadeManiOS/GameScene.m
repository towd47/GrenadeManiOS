//
//  GameScene.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/15/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "GameScene.h"


@implementation GameScene
//Enemy *enemy;
NSMutableArray *enemyList;
//NSMutableArray *bombList;
double enemyTime;
bool isBomb;
bool isExploding;
Bomb *bomb;
-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        enemyList = [[NSMutableArray alloc] init];
        isBomb = false;
        //bombList = [[NSMutableArray alloc]init];
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"bg.png"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.xScale = 0.25;
        background.yScale = 0.25;
        
        castle = [[Castle alloc] init];
        enemyTime = 5.0;
        
        
        [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(gameUpdate) userInfo: nil repeats:YES];
        
        [self addChild:background];
        
        [self addChild:castle];
        [self createEnemy];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *touch in touches)
    {
        if(isBomb == false)
        {
            isBomb = true;
            CGPoint location = [touch locationInNode:self];
            bomb = [[Bomb alloc]init];
            bomb.position = location;
            [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(bombExplosion) userInfo: nil repeats:NO];
        
        
            [self addChild:bomb];
        }
    }

}

-(void)bombExplosion
{
    [bomb removeFromParent];
    isExploding = true;
    Explosion *explosion = [[Explosion alloc]init];
    explosion.position = bomb.position;
    [explosion runAction:explode completion:^
    {
        isBomb = false;
        isExploding = false;
        [explosion removeFromParent];
    }
     ];
    [self addChild:explosion];

}

-(void)createEnemy
{
    
    [NSTimer scheduledTimerWithTimeInterval:enemyTime target:self selector:@selector(createEnemy) userInfo: nil repeats:YES];
    Enemy *enemy = [[Enemy alloc] init];
    [enemyList addObject:enemy];
    [enemy runAction:walkAndMoveLeft];
    [self addChild:enemy];
    
}
/*-(void)createBomb
{
    Bomb *bomb= [[Bomb alloc]init];
    [bombList addObject:bomb];
    [self addChild:bomb];
}*/
-(void)gameUpdate
{
    [self enemyCastleHit];
    [self bombIntersectWithEnemy];
}

-(void)enemyCastleHit
{
    if(enemyList != NULL)
    {
        for(Enemy *temp in enemyList)
        {
            if(temp!= NULL && temp.position.x <= castle.position.x + castle.size.width/2)
            {
                
                [temp removeFromParent];
                                //if(temp!=NULL)
                [enemyList removeObjectAtIndex:[enemyList indexOfObject:temp]];
            }
        }
    }
}

-(void)bombIntersectWithEnemy
{
        //NSLog(@"Check");
    if(isExploding)
    {
    for(Enemy *enemyTemp in enemyList)
        {
            
            //NSLog(@"Check");
            if(bomb.position.x+bomb.getWidth/2 <=enemyTemp.position.x+enemyTemp.getWidth/2 && bomb.position.x-bomb.getWidth/2 >= enemyTemp.position.x-enemyTemp.getWidth/2 && bomb.position.y + bomb.getHeight/2 <=enemyTemp.position.y+enemyTemp.getHeight/2 && bomb.position.y - bomb.getHeight/2 >= enemyTemp.position.y-enemyTemp.getHeight/2)
               
            {
                NSLog(@"HI");
                [enemyTemp removeFromParent];
                [enemyList removeObject:enemyTemp];
            }
        }
    }
    
}

-(void)update:(CFTimeInterval)currentTime
{
    
}



@end
