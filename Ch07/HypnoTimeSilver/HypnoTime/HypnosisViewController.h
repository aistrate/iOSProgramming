//
//  HypnosisViewController.h
//  HypnoTime
//
//  Created by Adrian Istrate on 26/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HypnosisViewController : UIViewController
{
    __weak IBOutlet UISegmentedControl *colorSegmentedControl;
}

- (IBAction)setCircleColor:(id)sender;

@end
