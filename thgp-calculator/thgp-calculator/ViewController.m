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

@implementation ViewController;

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

<<<<<<< HEAD



-(IBAction)calculate:(id)sender {
=======
-(IBAction)operatorFunction: (id)sender
{
    UIButton *buttonInfo;
    buttonInfo = (UIButton *)sender;
    NSLog(@" sender.tag = %d", buttonInfo.tag);
    
    if (buttonInfo.tag == 6) 
    {
    // division sign was pressed
    operatorPressed = @"/";
    }
   
    if (buttonInfo.tag == 7)
    {
    // multiply button was pushed
        operatorPressed = @"*";
    }
    
    if (buttonInfo.tag == 8)
    {
        // minus button was pushed
        operatorPressed = @"-";
    }
    
    if (buttonInfo.tag == 9)
    {
        // plus button was pushed
        operatorPressed = @"+";
=======
    if(operatorPressed== "+"){
      
        
        

    }
    
    if (buttonInfo.tag == 10)
    {
        // radical button was pushed
        operatorPressed = @"%";
        
    }
    
}
    
    
    
    




-(IBAction)numberPressed:(id)sender;
{
  
   }





//   ClearScreen/ Clears the screen.
-(IBAction)clearscreen:(id)sender 
{    
    inputNumber1 = 0;
    inputNumber2 = 0;
<<<<<<< HEAD
    operatorPressed = NULL;
=======
    NSString *operatorPressed = NULL;
>>>>>>> worked on my negative positive ibaction
    calculatedResult = 0;
    calculatorDisplay.text = NULL;
}
// changes input number to negative or positve
-(IBAction)negativePositive:(id)sender;

{
  
   UITextField *calculatorDisplay;
     
   bool isOperatorPressed
   double inputNumber1; 
   double inpuyNumber2;
}
@end
