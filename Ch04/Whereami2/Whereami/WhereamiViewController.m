//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Adrian Istrate on 21/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    
    if (self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        // There will be a warning from this line of code; ignore it for now
        [locationManager setDelegate:self];
        
        // And we want it to be as accurate as possible
        // regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        // Bronze Challenge
        [locationManager setDistanceFilter:50];
        
        // Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
        
        if ([CLLocationManager headingAvailable]){
            [locationManager startUpdatingHeading];
        } else {
            NSLog(@"You do not have a compass");
        }
    }
    
    return self;
}

- (void)dealloc
{
    // Tell the location manager to stop sending us messages
    [locationManager setDelegate:nil];
    NSLog(@"dealloc");
}

//- (void)locationManager:(CLLocationManager *)manager
//    didUpdateToLocation:(CLLocation *)newLocation
//           fromLocation:(CLLocation *)oldLocation
//{
//    NSLog(@"%@", newLocation);
//}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations
{
    NSLog(@"\n");
    for (CLLocation *location in locations) {
        NSLog(@"%@", location);
    }
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

// Silver Challenge
- (void)locationManager:(CLLocationManager *)manager
       didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"Heading: %@", newHeading);
}

@end
