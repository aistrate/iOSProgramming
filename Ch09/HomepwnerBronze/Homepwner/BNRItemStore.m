//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Adrian Istrate on 28/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    
    return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        over50DollarItems = [[NSMutableArray alloc] init];
        under50DollarItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)over50DollarItems
{
    return over50DollarItems;
}

- (NSArray *)under50DollarItems
{
    return under50DollarItems;
}

- (BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    
    if (p.valueInDollars > 50) {
        [over50DollarItems addObject:p];
    } else {
        [under50DollarItems addObject:p];
    }
    
    return p;
}

@end
