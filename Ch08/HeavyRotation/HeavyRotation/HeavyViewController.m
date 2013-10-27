//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Adrian Istrate on 27/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

// Works in iOS 6.0
- (BOOL)shouldAutorotate
{
    UIInterfaceOrientation x = [self interfaceOrientation];
    
    NSLog(@"shouldAutorotate: %d", x);
    
//    // Return YES if incoming orientation is Portrait
//    // or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait)
            || UIInterfaceOrientationIsLandscape(x);
    
    // Force Landscape orientation
    //return UIInterfaceOrientationIsLandscape(x);
}

// Deprecated in iOS 6.0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    NSLog(@"shouldAutorotateToInterfaceOrientation: %d", x);
    
    // Return YES if incoming orientation is Portrait
    // or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait)
            || UIInterfaceOrientationIsLandscape(x);
}

@end
