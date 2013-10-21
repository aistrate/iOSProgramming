//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Adrian Istrate on 20/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
//{
//    NSString *itemName;
//    NSString *serialNumber;
//    int valueInDollars;
//    NSDate *dateCreated;
//    
//    BNRItem *containedItem;
//    __weak BNRItem *container;
//}

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@end
