//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Adrian Istrate on 21/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

//- (void)doSomethingWeird;

@end
