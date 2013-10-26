//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Adrian Istrate on 26/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // Call the superclass's designated initializer
    self = [super initWithNibName:nibName
                           bundle:bundle];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Hypnosis"];
        
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view.");
}

- (IBAction)setCircleColor:(id)sender
{
    HypnosisView *hypnosisView = (HypnosisView *)[self view];
    
    switch ([colorSegmentedControl selectedSegmentIndex]) {
        case 0:
            [hypnosisView setCircleColor:[UIColor redColor]];
            break;
            
        case 1:
            [hypnosisView setCircleColor:[UIColor greenColor]];
            break;
            
        case 2:
            [hypnosisView setCircleColor:[UIColor blueColor]];
            break;
            
        default:
            break;
    }
}

@end
