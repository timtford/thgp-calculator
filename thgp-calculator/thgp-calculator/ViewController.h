//
//  ViewController.h
//  thgp-calculator
//
//  Created by Timothy Ford on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{ 
    double inputNumber1;
    double inputNumber2;    
    NSString *operatorPressed;
    double calculatedResult;
    UITextField *calculatorDisplay;
    BOOL isOperatorPressed;
    
}

@property (nonatomic, retain) NSString  *operatorPressed;
@property (nonatomic, retain) IBOutlet UITextField *calculatorDisplay;

-(IBAction)numberPressed:(id)sender;
-(IBAction)negativePositive:(id)sender;
-(IBAction)calculate:(id)sender;
-(IBAction)clearScreen:(id)sender;
-(IBAction)operatorFunction:(id)sender;


@end

