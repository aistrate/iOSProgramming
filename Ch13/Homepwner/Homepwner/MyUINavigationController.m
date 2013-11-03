//
//  MyUINavigationController.m
//  Homepwner
//
//  Created by Adrian Istrate on 03/11/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "MyUINavigationController.h"

@implementation MyUINavigationController

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskPortrait;
    }
}

@end
