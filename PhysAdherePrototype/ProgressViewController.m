//
//  ProgressViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *interiorBackArrow;
@property (weak, nonatomic) IBOutlet UIImageView *exteriorBackArrow;

@end

@implementation ProgressViewController

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
    self.interiorBackArrow.transform = CGAffineTransformMakeRotation(M_PI);
    self.exteriorBackArrow.transform = CGAffineTransformMakeRotation(M_PI);
}
- (IBAction)didTapShare:(id)sender {
    UIImage *shareImage = [UIImage imageNamed:@"chart"];
    UIActivityViewController *activity = [[UIActivityViewController alloc] initWithActivityItems:@[shareImage] applicationActivities:nil];
    [self presentViewController:activity animated:YES completion:nil];
    
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
