//
//  BNRContainer.m
//  ItemContainer
//
//  Created by Adrian Istrate on 20/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (id)init
{
    self = [super init];
    
    if (self) {
        subitems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addSubitem:(BNRItem *)subitem
{
    [subitems addObject:subitem];
}

- (int)valueInDollars
{
    int sum = 0;
    for (BNRItem *item in subitems) {
        sum += [item valueInDollars];
    }
    return sum;
}

- (NSString *)description
{
    NSMutableString *descriptionString =
        [[NSMutableString alloc] initWithFormat:@"Container value $%d, Subitems (\n", [self valueInDollars]];
    
    for (BNRItem *item in subitems) {
        [descriptionString appendFormat:@"    %@,\n", item];
    }
    
    [descriptionString appendString:@")"];
    
    return descriptionString;
}

@end
