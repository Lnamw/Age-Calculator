//
//  ViewController.m
//  Age Calculator
//
//  Created by Elena Maso Willen on 26/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSDate *birthday;

@end

NSDateFormatter *formatter;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *currentDate = [NSDate date];
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
    NSString *dateString = [formatter stringFromDate:currentDate];
    
    self.currentDateLabel.text = dateString;
}

-(void)dateWasChosen:(NSDate *)chosenDate
{
    self.birthday = chosenDate;
    NSString *birthdaychosen = [formatter stringFromDate:chosenDate];
    self.dateOfBirthLabel.text = birthdaychosen;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"SetupDateOfBirthSegue"]) {
        DatePickerViewController *vc = (DatePickerViewController *)[segue destinationViewController];
        vc.delegate = self;
    }
    
    
}

- (IBAction)ageCalculatorButtonPressed:(id)sender {
    if (self.birthday != nil) {
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self.birthday toDate:[NSDate date] options:0];
        NSString *ageCalculated = [NSString stringWithFormat:@"Age is %ld", (long)components.year];
        
        self.ageLabel.text = ageCalculated;
    }
    
}

@end







