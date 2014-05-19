//
//  Castle.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Castle.h"

@implementation Castle
-(id)init
{
    self = [super init];
    [self setTexture:SPRITES_TEX_CASTLE];
    
    self.position = CGPointMake(self.getWidth/2, [UIScreen mainScreen].bounds.size.height/2);
    return self;
}

@end
