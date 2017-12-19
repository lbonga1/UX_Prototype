//
//  PANavigationController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "PANavigationController.h"
#import "AppDelegate.h"

@interface PANavigationController ()

@end

@implementation PANavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.backgroundColor = [UIColor colorWithRed:0.87 green:0.96 blue:0.95 alpha:1.0];
    self.navigationBar.tintColor = PADarkGreen;
    
    [[UINavigationBar appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      PATextGrey, NSForegroundColorAttributeName,
      [UIFont fontWithName:@"Frutiger-Bold" size:25.0], NSFontAttributeName,nil]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
