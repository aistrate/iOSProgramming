//
//  DetailViewController.h
//  Homepwner
//
//  Created by Adrian Istrate on 29/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController
    <UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialNumberField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UIButton *clearButton;
}

@property (nonatomic, strong) BNRItem *item;

- (IBAction)takePicture:(id)sender;
- (IBAction)clearPicture:(id)sender;

- (IBAction)backgroundTapped:(id)sender;

@end
