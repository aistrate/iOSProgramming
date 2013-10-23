//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Adrian Istrate on 23/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title, subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c
                   title:(NSString *)t
                subtitle:(NSString *)st
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
        [self setSubtitle:st];
    }
    return self;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)c
                   title:(NSString *)t
{
    return [self initWithCoordinate:c title:t subtitle:nil];
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"Hometown"];
}

@end
