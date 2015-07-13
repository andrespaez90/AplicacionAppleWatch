//
//  AdivinaController.m
//  AplicacionAppleWatch
//
//  Created by INNOVATING SOFTWARE SAS on 12/07/15.
//  Copyright (c) 2015 INNOVATING SOFTWARE SAS. All rights reserved.
//

#import "AdivinaController.h"

@interface AdivinaController(){
    
    int labelNumber;
    int randomNumber;
    
    
}
@end

@implementation AdivinaController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    labelNumber = 0;
    randomNumber = arc4random() % (100 - 0);
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}



-(IBAction)Number1:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 1;
    [self setLabelText];
    
    
}

-(IBAction)Number2:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 2;
    [self setLabelText];
    
}

-(IBAction)Number3:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 3;
    [self setLabelText];
    
}

-(IBAction)Number4:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 4;
    [self setLabelText];
    
}

-(IBAction)Number5:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 5;
    [self setLabelText];
    
}

-(IBAction)Number6:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 6;
    [self setLabelText];
    
}

-(IBAction)Number7:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 7;
    [self setLabelText];
    
}

-(IBAction)Number8:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 8;
    [self setLabelText];
    
}

-(IBAction)Number9:(id)sender
{
    labelNumber = labelNumber * 10;
    labelNumber = labelNumber + 9;
    [self setLabelText];
    
}

-(IBAction)Number0:(id)sender
{
    labelNumber = labelNumber * 10;
    [self setLabelText];
    
}

-(IBAction)Go:(id)sender{
    if (labelNumber == randomNumber){
        [[self taxtLabel]setText:@"Ganaste, de nuevo?"];
        labelNumber = 0;
        randomNumber = arc4random() % (100 - 0);
    }
    else{
        if(labelNumber < randomNumber)
            [[self taxtLabel]setText:@"No, es mayor"];
        if(labelNumber > randomNumber)
            [[self taxtLabel]setText:@"No, es menor"];
        labelNumber = 0;
    }
}

- (void) setLabelText{
    NSMutableString *text = [NSMutableString stringWithFormat:@"%d",labelNumber];
    [[self taxtLabel]setText:text];
}

@end