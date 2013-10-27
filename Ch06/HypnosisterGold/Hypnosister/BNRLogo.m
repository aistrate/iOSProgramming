//
//  BNRLogo.m
//  Hypnosister
//
//  Created by Adrian Istrate on 25/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "BNRLogo.h"

@implementation BNRLogo

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
    
    // Draw outline and shadow
    bounds.origin.x += 1;
    bounds.origin.y += 1;
    bounds.size.width -= 3;
    bounds.size.height -= 3;
    
    CGSize offset = CGSizeMake(0, 1);
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    CGContextSetShadowWithColor(ctx, offset, 1.0, color);
    
    CGContextAddEllipseInRect(ctx, bounds);
    CGContextStrokePath(ctx);
    
    // Clip to a circle everything that follows
    CGContextAddEllipseInRect(ctx, bounds);
    CGContextClip(ctx);
    
    // Draw image
//    NSString *imageFile = [[NSBundle mainBundle] pathForResource:@"Icon@2x" ofType:@"png"];
//    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imageFile];
    UIImage *image = [UIImage imageNamed:@"Icon.png"];
    [image drawInRect:bounds];
    
    // Draw gradient
    CGFloat components[] = { 1, 1, 1, 0, 0, 0, 1, 0.15 };
    CGGradientRef gradient =
        CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), components, nil, 2);
    
    CGPoint startPoint = { bounds.origin.x, bounds.origin.y + bounds.size.height / 2.0 },
            endPoint   = { bounds.origin.x, bounds.origin.y + bounds.size.height };
    CGContextDrawLinearGradient(ctx, gradient, startPoint, endPoint, 0);
}

@end
