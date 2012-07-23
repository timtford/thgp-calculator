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
    isFirstInputAfterOP = TRUE;
    isOperatorPressed = FALSE;
    isDecimalPressed = FALSE;
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

    }
    if (buttonInfo.tag == 20)
    {
        // radical button was pushed
        operatorPressed = @"%";
    }
    
    isOperatorPressed = TRUE;
    
}

    
    

-(IBAction)calculate:(id)sender
{
    NSLog(@"calculate function called" );
    NSLog(@"is operator pressed = %d", isOperatorPressed);
    NSLog(@"operator pressed = %@",operatorPressed);
    
    if (isOperatorPressed && operatorPressed == @"-"){
        calculatedResult = inputNumber1 - inputNumber2;
        calculatorDisplay.text = [NSString  stringWithFormat:@"%f", calculatedResult];
    } 
    
    if(isOperatorPressed && operatorPressed == @"+") {
        calculatedResult = inputNumber1 + inputNumber2;
        calculatorDisplay.text = [NSString stringWithFormat:@"%f", calculatedResult];
    }


    if(isOperatorPressed && operatorPressed == @"*") {
        calculatedResult = inputNumber1 * inputNumber2;
        calculatorDisplay.text = [NSString stringWithFormat:@"%f", calculatedResult];
                
    }
    
    if( isOperatorPressed && operatorPressed == @"/") {
        calculatedResult = inputNumber1 / inputNumber2;
        calculatorDisplay.text = [NSString stringWithFormat:@"%f", calculatedResult];
    }
                                  

}



-(IBAction)numberPressed:(id)sender
{
    NSString *originalText;
    NSString *outputText;
    UIButton *buttonPressed = (UIButton *)sender;
    
    if (isFirstInputAfterOP && isOperatorPressed) {
        calculatorDisplay.text = @"";
        isFirstInputAfterOP = FALSE;
    }
    originalText = calculatorDisplay.text;
    
    if (buttonPressed.tag == 10)
    {
        if (isDecimalPressed) {
            outputText = originalText;
        } else {
            outputText = [NSString stringWithFormat:@"%@.", originalText];    
            isDecimalPressed = TRUE;
        }
                    
    } else {
        outputText = [NSString stringWithFormat:@"%@%d", originalText, buttonPressed.tag];    
    }
    
    NSLog(@"Number Pressed Called");
    NSLog(@"Number Pressed = %d", buttonPressed.tag);
    NSLog(@"outpuText = %@", outputText);
    
    if (isOperatorPressed) { 
        
        inputNumber2 = [outputText doubleValue];
    } else {
        
        inputNumber1 = [outputText doubleValue];
    
        
    }
    calculatorDisplay.text = outputText;
    
}





//   clearScreen/ Clears the screen.
-(IBAction)clearScreen:(id)sender 
{    
    inputNumber1 = 0;
    inputNumber2 = 0;
    calculatedResult = 0;
    operatorPressed = @"";
    calculatorDisplay.text = @"";
    isOperatorPressed = FALSE;
    isDecimalPressed = FALSE;
    isFirstInputAfterOP = TRUE;
    
}
    
    
    
    
// changes input number to negative or positve
-(IBAction)negativePositive:(id)sender
{
    double output;
    
    output = [calculatorDisplay.text doubleValue];
    output = output * -1;
    
    if(isOperatorPressed)
    {
      inputNumber2 = output;
    }
    else {
      inputNumber1 = output;
    }
    
    calculatorDisplay.text = [NSString stringWithFormat:@"%f", output];
}
    
    
    
    
@end
