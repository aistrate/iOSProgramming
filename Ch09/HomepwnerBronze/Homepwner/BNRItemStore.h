//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Adrian Istrate on 28/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *over50DollarItems;
    NSMutableArray *under50DollarItems;
}

// Notice that this is a class method and prefixed with a + instead of a -
+ (BNRItemStore *)sharedStore;

- (NSArray *)over50DollarItems;
- (NSArray *)under50DollarItems;
- (BNRItem *)createItem;

@end
