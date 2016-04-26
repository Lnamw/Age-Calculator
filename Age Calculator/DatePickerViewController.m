//
//  DatePickerViewController.m
//  Age Calculator
//
//  Created by Elena Maso Willen on 26/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "DatePickerViewController.h"
#import "ViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *dateOfBirthChosen = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonPressed:)];
    self.navigationItem.rightBarButtonItem = dateOfBirthChosen;
}

-(void)doneButtonPressed:(id)sender {
    [self.delegate dateWasChosen:self.datePicker.date];
    [self.navigationController popViewControllerAnimated:YES];
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
