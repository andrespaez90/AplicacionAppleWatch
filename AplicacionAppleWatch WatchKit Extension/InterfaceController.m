//
//  InterfaceController.m
//  AplicacionAppleWatch WatchKit Extension
//
//  Created by INNOVATING SOFTWARE SAS on 12/07/15.
//  Copyright (c) 2015 INNOVATING SOFTWARE SAS. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController(){
    int number;
    int minNumber;
    int maxnumber;
}

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    number = 50;
    maxnumber = 100;
    minNumber = 0;
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

- (IBAction)ButtonLess {
    maxnumber = number;
    number = number / 2;
    [self setLabelText];
}

- (IBAction)ButtonMore {
    minNumber = number;
    number = (maxnumber + minNumber) / 2;
    [self setLabelText];
}

- (void) setLabelText{
    NSMutableString *text = [NSMutableString stringWithFormat:@"%d%@",number,@"?"];
    [[self Text]setText:text];
}

@end



