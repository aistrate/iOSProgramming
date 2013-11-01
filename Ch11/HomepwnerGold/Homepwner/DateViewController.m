//
//  DateViewController.m
//  Homepwner
//
//  Created by Adrian Istrate on 01/11/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "DateViewController.h"
#import "BNRItem.h"

@implementation DateViewController

@synthesize item;

+ (DateViewController *)sharedController
{
    static DateViewController *sharedController = nil;
    if (!sharedController)
        sharedController = [[super allocWithZone:nil] init];
    
    return sharedController;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedController];
}

- (id)init
{
    self = [super init];
    if (self) {
        [[self navigationItem] setTitle:@"Date"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [datePicker setDate:[item dateCreated] animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [item setDateCreated:[datePicker date]];
}

@end
