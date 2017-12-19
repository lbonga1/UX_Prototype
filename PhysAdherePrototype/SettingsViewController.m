//
//  SettingsViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "SettingsViewController.h"
#import "AppDelegate.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIButton *interiorBackButton;
@property (weak, nonatomic) IBOutlet UIButton *exteriorBackButton;
@property (weak, nonatomic) IBOutlet UIButton *timeAmount;
@property (weak, nonatomic) IBOutlet UIButton *interiorNextButton;
@property (weak, nonatomic) IBOutlet UIButton *exteriorNextButton;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUp {
    self.timeAmount.tag = 1;
    
    self.interiorBackButton.transform = CGAffineTransformMakeRotation(M_PI);
    self.exteriorBackButton.transform = CGAffineTransformMakeRotation(M_PI);
    
    self.containerView.layer.borderColor = PADarkGreenCG;
    self.containerView.layer.borderWidth = 2.0;
}

- (IBAction)decreaseTime:(UIButton*)sender {
    if (![self.timeAmount.currentTitle isEqualToString:@"1 Month"]) {
        self.timeAmount.tag = self.timeAmount.tag - 1 ;
        
        self.interiorNextButton.hidden = NO;
        self.exteriorNextButton.hidden = NO;
        
        if ([self.timeAmount.currentTitle isEqualToString:@"2 Months"]) {
            [self.timeAmount setTitle:@"1 Month" forState:UIControlStateNormal];
            self.interiorBackButton.hidden = YES;
            self.exteriorBackButton.hidden = YES;
        } else {
            NSString *timeString = [NSString stringWithFormat:@"%ld Months", (long)self.timeAmount.tag];
            [self.timeAmount setTitle:timeString forState:UIControlStateNormal];
        }
    }
}

- (IBAction)increaseTime:(UIButton*)sender {
    if (![self.timeAmount.currentTitle isEqualToString:@"1 Year"]) {
        self.timeAmount.tag = self.timeAmount.tag + 1;
        
        self.interiorBackButton.hidden = NO;
        self.exteriorBackButton.hidden = NO;
        
        if ([self.timeAmount.currentTitle isEqualToString:@"11 Months"]) {
            [self.timeAmount setTitle:@"1 Year" forState:UIControlStateNormal];
            
            self.interiorNextButton.hidden = YES;
            self.exteriorNextButton.hidden = YES;
        } else {
            NSString *timeString = [NSString stringWithFormat:@"%ld Months", (long)self.timeAmount.tag];
            [self.timeAmount setTitle:timeString forState:UIControlStateNormal];
        }
    }
}

- (IBAction)didTapEditPassword:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Edit Password" message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Current Password";
        textField.secureTextEntry = YES;
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"New Password";
        textField.secureTextEntry = YES;
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *done = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:cancel];
    [alert addAction:done];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)didTapLogOut:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
