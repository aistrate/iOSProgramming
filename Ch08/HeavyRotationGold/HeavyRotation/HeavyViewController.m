//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Adrian Istrate on 27/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController

// Works in iOS 6.0 and higher
- (BOOL)shouldAutorotate
{
    UIInterfaceOrientation x = [self interfaceOrientation];
    
    return (x == UIInterfaceOrientationPortrait)
            || UIInterfaceOrientationIsLandscape(x);
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)x
                                         duration:(NSTimeInterval)duration
{
    CGRect bounds = [[self view] bounds];
    
    if (UIInterfaceOrientationIsPortrait(x)) {
        [blueButton setCenter:CGPointMake(30,
                                          bounds.size.height / 2.0)];
    } else {
        [blueButton setCenter:CGPointMake(bounds.size.width - 30,
                                          bounds.size.height / 2.0)];
    }
}

@end
