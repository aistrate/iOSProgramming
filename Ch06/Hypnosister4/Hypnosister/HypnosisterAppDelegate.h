//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Adrian Istrate on 24/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
