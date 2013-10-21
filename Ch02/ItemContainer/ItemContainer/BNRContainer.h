//
//  BNRContainer.h
//  ItemContainer
//
//  Created by Adrian Istrate on 20/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subitems;
}

- (void)addSubitem:(BNRItem *)subitem;

@end
