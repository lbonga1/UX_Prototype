//
//  ContactViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "ContactViewController.h"
#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface ContactViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *contactImageView;
@property (weak, nonatomic) IBOutlet UIView *contactInfoContainer;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUp {
    self.contactInfoContainer.layer.borderWidth = 2.0;
    self.contactInfoContainer.layer.borderColor =PADarkGreenCG;
    
    self.contactImageView.layer.borderWidth = 2.0;
    self.contactImageView.layer.borderColor = PADarkGreenCG;
}

@end
