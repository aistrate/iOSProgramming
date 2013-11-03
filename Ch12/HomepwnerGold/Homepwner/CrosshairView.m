//
//  CrosshairView.m
//  Homepwner
//
//  Created by Adrian Istrate on 03/11/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "CrosshairView.h"

@implementation CrosshairView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    
    return self;
}

- (void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0 + 1;
    center.y = bounds.origin.y + bounds.size.height / 2.0 + 1;
    
    CGFloat crosshairRadius = 40;
    
    [[UIColor greenColor] setStroke];
    
    CGContextMoveToPoint(ctx, center.x, center.y - crosshairRadius);
    CGContextAddLineToPoint(ctx, center.x, center.y + crosshairRadius);
    
    CGContextMoveToPoint(ctx, center.x - crosshairRadius, center.y);
    CGContextAddLineToPoint(ctx, center.x + crosshairRadius, center.y);
    
    CGContextStrokePath(ctx);
}

@end
