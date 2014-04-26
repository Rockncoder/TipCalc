//
//  TAViewController.m
//  TipCalc
//
//  Created by Troy Miles on 4/26/14.
//  Copyright (c) 2014 Troy Miles. All rights reserved.
//

#import "TAViewController.h"

@interface TAViewController ()

@end


NSUInteger currentRatings = 1;
double tipPercents[] = {0.0, 0.04, 0.08, 0.12, 0.16, 0.20};

@implementation TAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ratingsChanged:(UIStepper *)sender {
    NSUInteger value = sender.value;
    currentRatings = value;

    self.ratingsLabel.text = [NSString stringWithFormat:@"%1d star%s", value, (value == 1?"": "s")];
    [self updateCalculation];
    [self.billAmount resignFirstResponder];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

-(void)updateCalculation {
    double bill = [[self.billAmount text] doubleValue];
    double tip = bill * tipPercents[currentRatings];
    double total = bill + tip;
    
    self.tipAmount.text = [NSString stringWithFormat:@"%5.2f", tip];
    self.totalAmount.text = [NSString stringWithFormat:@"%5.2f", total];
}

- (IBAction)editingChanged:(id)sender {
    [self updateCalculation];
}

@end
