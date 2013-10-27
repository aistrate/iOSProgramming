//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Adrian Istrate on 27/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController

- (void)viewDidLoad
{
    [slider setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin |
                                UIViewAutoresizingFlexibleWidth];
    
    [image setAutoresizingMask:UIViewAutoresizingFlexibleWidth |
                               UIViewAutoresizingFlexibleHeight];
    
    [leftButton setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
                                    UIViewAutoresizingFlexibleRightMargin];
    
    [rightButton setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
                                     UIViewAutoresizingFlexibleLeftMargin];
}

// Works in iOS 6.0 and higher
- (BOOL)shouldAutorotate
{
    UIInterfaceOrientation x = [self interfaceOrientation];
    
    return (x == UIInterfaceOrientationPortrait)
            || UIInterfaceOrientationIsLandscape(x);
}

@end
