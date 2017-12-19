//
//  PATabBarController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "PATabBarController.h"
#import "AppDelegate.h"

@interface PATabBarController ()

@end

@implementation PATabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tabBar setTintColor:PADarkGreenAccent];
    
//    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: PADarkGreenAccent, NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
//    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: PADarkGreen, NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
    
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
