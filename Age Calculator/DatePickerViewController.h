//
//  DatePickerViewController.h
//  Age Calculator
//
//  Created by Elena Maso Willen on 26/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DatePickerViewControllerDelegate <NSObject>

-(void)dateWasChosen:(NSDate *)chosenDate;

@end

@interface DatePickerViewController : UIViewController 

@property(nonatomic, weak) id<DatePickerViewControllerDelegate>delegate;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
