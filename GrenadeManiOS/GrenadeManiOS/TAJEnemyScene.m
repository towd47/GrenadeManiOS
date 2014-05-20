//
//  TAJEnemyScene.m
//  GrenadeManiOS
//
//  Created by Math Cart on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "TAJEnemyScene.h"
@interface TAJEnemyScene()
@end
@implementation TAJEnemyScene
-(void)initTAJEnemyScene
{
    self.scaleMode = SKceneScaleModeAspectFill;
    SKSpriteNode *TAJEnemyNode = [self createTAJEnemyNode];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    SKNode *TAJEnemyNode = [self childNodeWithName:@"TAJEnemyNode"];
    if(TAJEnemyNode != nil)
    {
        //SKACtion *animate = [SKAction animateWithTextures:self.TAJEnemyAnimation
                                             //timePerFrame: 0.05];
        TAJEnemyNode.position = CGPointMake(200, 190)
        SKACtion *animate = [SKAction moveByX: 200 y:0 duration:100
        [TAJEnemyNode runAction:animate];
    }
}


    //SKScene *TAJEnemyScene=[[TAJEnemyScene alloc]initWithSize:self.size];
//SKAction *)moveByX:(CGFloat)DeltaX y:(CGFloat) DeltaY duration:(NSTimeInterval) sec

@end
