//
//  ViewController.m
//  botonChange
//
//  Created by guitarrkurt on 30/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *carRed = [UIImage imageNamed:@"redCar.png"];
    [[self car] setBackgroundImage:carRed forState:UIControlStateNormal];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//INFO:stackoverflow.com/questions/7999826/whats-the-right-uicontrolstate-for-the-uibutton-being-pressed

//INFO:stackoverflow.com/questions/3550201/how-exactly-to-make-a-cgimageref-from-an-image-on-disk
- (IBAction)changeCar:(id)sender {

    self.cont++;
    
    NSLog(@"%d", self.cont);
    if((self.cont % 2 == 0))
    {
        UIImage *carYellow = [UIImage imageNamed:@"yellowCar.png"];
        
        [[self car] setBackgroundImage:carYellow forState:UIControlStateNormal];
    }else{
    
        
        UIImage *carRed = [UIImage imageNamed:@"redCar.png"];
        [[self car] setBackgroundImage:carRed forState:UIControlStateNormal];
    }
    

    
    
}

@end
