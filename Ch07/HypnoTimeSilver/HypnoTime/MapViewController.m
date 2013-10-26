//
//  MapViewController.m
//  HypnoTime
//
//  Created by Adrian Istrate on 26/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MKMapView.h>

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    self = [super initWithNibName:nibName
                           bundle:bundle];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Map"];
    }
    return self;
}

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    MKMapView *v = [[MKMapView alloc] initWithFrame:frame];
    
    [self setView:v];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"MapViewController loaded its view.");
}

@end
