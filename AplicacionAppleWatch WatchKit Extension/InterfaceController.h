//
//  InterfaceController.h
//  AplicacionAppleWatch WatchKit Extension
//
//  Created by INNOVATING SOFTWARE SAS on 12/07/15.
//  Copyright (c) 2015 INNOVATING SOFTWARE SAS. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *Text;

@property (weak, nonatomic) IBOutlet WKInterfaceButton *Menor;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *Mayor;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *Correcto;

@end
