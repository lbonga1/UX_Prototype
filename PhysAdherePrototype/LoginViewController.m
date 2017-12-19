//
//  ViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/17/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *providerLoginButton;
@property (nonatomic) CAGradientLayer *gradient;
@property (weak, nonatomic) IBOutlet UIButton *patientLoginButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gradient = [CAGradientLayer layer];
    self.gradient.frame = self.view.bounds;
    self.gradient.colors = @[(id)PALightGreenTintCG, (id)PADarkGreenCG];
    
    [self.view.layer insertSublayer:self.gradient atIndex:0];
    
    self.providerLoginButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.patientLoginButton.titleLabel.textAlignment = NSTextAlignmentCenter;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapLogin:(id)sender {
    [self performSegueWithIdentifier:@"Login" sender:self];
}



@end
