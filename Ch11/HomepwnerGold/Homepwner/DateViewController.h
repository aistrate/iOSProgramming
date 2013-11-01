//
//  DateViewController.h
//  Homepwner
//
//  Created by Adrian Istrate on 01/11/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DateViewController : UIViewController
{
    __weak IBOutlet UIDatePicker *datePicker;
}

@property (nonatomic, strong) BNRItem *item;

+ (DateViewController *)sharedController;

@end
