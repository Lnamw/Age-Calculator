//
//  ViewController.h
//  Age Calculator
//
//  Created by Elena Maso Willen on 26/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatePickerViewController.h"

@interface ViewController : UIViewController <DatePickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *dateOfBirthLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

- (IBAction)ageCalculatorButtonPressed:(id)sender;


@end

