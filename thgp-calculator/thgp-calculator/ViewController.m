//
//  ViewController.m
//  thgp-calculator
//
//  Created by Timothy Ford on 7/6/12.
//  Edited By Tyson Walton
//  Edited by Aiga Zulu
//  Edited by David Armstrong
//  Edited by Kalani Cecaci
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

@synthesize operatorPressed;
@synthesize calculatorDisplay;

 
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

    //converion comands;





-(IBAction)calculate:(id)sender {

-(IBAction)operatorFunction: (id)sender
{
    UIButton *buttonInfo;
    buttonInfo = (UIButton *)sender;
    NSLog(@" sender.tag = %d", buttonInfo.tag);
    

    if (buttonInfo.tag == 26) 
    {
    // division sign was pressed
    operatorPressed = @"/";
    }
   
    if (buttonInfo.tag == 27)
    {
    // multiply button was pushed
        operatorPressed = @"*";
    }
    
    if (buttonInfo.tag == 28)
    {
        // minus button was pushed
        operatorPressed = @"-";
    }
    
    if (buttonInfo.tag == 29)
    {
        // plus button was pushed
        operatorPressed = @"+";
    
    if (buttonInfo.tag == 20)
    {
        // radical button was pushed
        operatorPressed = @"%";
        
    }
}
    
    
    
    




-(IBAction)numberPressed:(id)sender
{
    NSString *originalText;
    NSString *outputText;
    UIButton *buttonPressed = sender;
    
    originalText = calculatorDisplay.text;
    outputText = [NSString stringWithFormat:originalText, buttonPressed.tag];    
    
    
    if (isOperatorPressed) { 
        
        inputNumber2 = [outputText doubleValue];
    } else {
            
        UITextField inputNumber1;
        UITextField inputNumber2;
      
            }  
}





//   ClearScreen/ Clears the screen.
-(IBAction)clearscreen:(id)sender 
{    
    inputNumber1 = 0;
    inputNumber2 = 0;
    calculatedResult = 0;
    operatorPressed = NULL;
    calculatorDisplay.text = NULL;
}
// changes input number to negative or positve
-(IBAction)negativePositive:(id)sender
{
    double output;
    
    output = [calculatorDisplay.text doubleValue];
    output = output * -1;
    calculatorDisplay.text = output;
    if(isOperatorPressed){
      inputNumber2 = output;
    else {
      inputNumber1 = output;
    }
}
@end
