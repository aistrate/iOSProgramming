//
//  main.m
//  RandomPossessions
//
//  Created by Adrian Istrate on 20/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [items addObject:p];
//        }
//        
//        for (BNRItem *item in items) {
//            NSLog(@"%@", item);
//        }
        
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"Calculator"];
        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
        NSLog(@"Setting items to nil...");
        items = nil;
        
        
        backpack = nil;
        
        NSLog(@"Container: %@", [calculator container]);
        
        calculator = nil;
        
        NSLog(@"Done");

    }
    return 0;
}

