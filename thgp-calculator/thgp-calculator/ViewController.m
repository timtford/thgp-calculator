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
    
        <#statements#>
    }
    
    
    
    
    
    
    
    




-(IBAction)numberPressed:(id)sender;
{
  
   }





//   ClearScreen/ Clears the screen.
-(IBAction)clearscreen:(id)sender 
{    
    inputNumber1 = 0;
    inputNumber2 = 0;
    *operatorPressed = NULL;
    calculatedResult = 0;
}

-(IBAction)negativePositive:(id)sender;

{
    NSString *operatorPressed;
    
    
    
}
@end
