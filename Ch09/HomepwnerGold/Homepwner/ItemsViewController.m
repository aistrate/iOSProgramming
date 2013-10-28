//
//  ItemsViewController.m
//  Homepwner
//
//  Created by Adrian Istrate on 28/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (void)viewDidLoad
{
    UIImage *image = [UIImage imageNamed:@"Niagara.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    [[self tableView] setBackgroundView:imageView];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count] + 1;
}

-    (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ([indexPath row] < [[[BNRItemStore sharedStore] allItems] count]) ? 60 : 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    
    if ([indexPath row] < [[[BNRItemStore sharedStore] allItems] count]) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
        
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:@"UITableViewCell"];
            [[cell textLabel] setFont:[UIFont systemFontOfSize:20]];
        }
    
        BNRItem *p = [[[BNRItemStore sharedStore] allItems]
                            objectAtIndex:[indexPath row]];
        
        [[cell textLabel] setText:[p description]];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell-Last"];
        
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:@"UITableViewCell-Last"];
        }
        
        [[cell textLabel] setText:@"No more items!"];
    }
    
    
    return cell;
}

@end
