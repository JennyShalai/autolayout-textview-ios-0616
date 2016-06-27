//
//  ViewController.m
//  autolayout-textview-ios-0616
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textFieldArea;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///////    DISABLE SETTINGS    ////////
    // disable default super-view settings
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];

    // disable default text field settings
    self.textFieldArea.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textFieldArea removeConstraints:self.textFieldArea.constraints];
    
    // disable default buttons settings
    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.leftButton removeConstraints:self.leftButton.constraints];
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.rightButton removeConstraints:self.rightButton.constraints];
    
    
    ///////  SETTING NEW SETTINGS  ////////
    // set new settings for text firld
    [self.textFieldArea.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.textFieldArea.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-20].active = YES;
    [self.textFieldArea.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:10].active = YES;
    
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20].active = YES;
    [self.leftButton.topAnchor constraintEqualToAnchor:self.textFieldArea.bottomAnchor constant:10].active = YES;
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
    
    
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-20].active = YES;
    //[self.rightButton.topAnchor constraintEqualToAnchor:self.textFieldArea.bottomAnchor constant:10].active = YES;
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20].active = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
