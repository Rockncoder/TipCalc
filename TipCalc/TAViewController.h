//
//  TAViewController.h
//  TipCalc
//
//  Created by Troy Miles on 4/26/14.
//  Copyright (c) 2014 Troy Miles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UITextField *tipAmount;
@property (weak, nonatomic) IBOutlet UITextField *totalAmount;
@property (weak, nonatomic) IBOutlet UIStepper *ratingsStepper;
@property (weak, nonatomic) IBOutlet UILabel *ratingsLabel;

@end
