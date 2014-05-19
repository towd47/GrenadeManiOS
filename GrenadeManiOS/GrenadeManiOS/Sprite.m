//
//  Sprite.m
//  GrenadeManiOS
//
//  Created by Mokacola on 5/19/14.
//  Copyright (c) 2014 TomAndrewJeff. All rights reserved.
//

#import "Sprite.h"
@implementation Sprite

double castleEnd;
-(id)init
{
    self = [super init];
    
    return self;
}

-(double)getWidth
{
    return self.size.width;
}
-(double)getHeight
{
    return self.size.height;
}
-(double)getXValue
{
    return self.position.x;
}
-(double)getYValue
{
    return self.position.y;
}


@end
