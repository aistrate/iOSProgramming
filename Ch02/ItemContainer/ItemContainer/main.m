//
//  main.m
//  ItemContainer
//
//  Gold Challenge from Chapter 2
//
//  Created by Adrian Istrate on 20/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRContainer *container = [[BNRContainer alloc] init];
        
        for (int i = 0; i < 3; i++) {
            [container addSubitem:[BNRItem randomItem]];
        }
        
        BNRContainer *subcontainer = [[BNRContainer alloc] init];
        for (int i = 0; i < 4; i++) {
            [subcontainer addSubitem:[BNRItem randomItem]];
        }
        [container addSubitem:subcontainer];
        
        for (int i = 0; i < 2; i++) {
            [container addSubitem:[BNRItem randomItem]];
        }
        
        NSLog(@"\n%@", container);
        
    }
    return 0;
}

