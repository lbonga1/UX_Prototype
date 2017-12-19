//
//  ActivitiesViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "ActivitiesViewController.h"
#import "ActivityTableViewCell.h"
#import "AppDelegate.h"

@interface ActivitiesViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *interiorBackArrow;
@property (weak, nonatomic) IBOutlet UIImageView *exteriorBackArrow;

@property (nonatomic) NSMutableArray *activities;

@end

@implementation ActivitiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUp];
}

- (void)setUp {
    self.tableView.layer.borderWidth = 2.0;
    self.tableView.layer.borderColor = PADarkGreenCG;
    
    self.interiorBackArrow.transform = CGAffineTransformMakeRotation(M_PI);
    self.exteriorBackArrow.transform = CGAffineTransformMakeRotation(M_PI);
    
    [self addNewActivities];
    [self.tableView reloadData];
}

- (void)addNewActivities {
    NSDictionary *activity = @{@"activity":@"Shoulder External Rotation",
                               @"reps":@"10 Repetitions"};
    NSDictionary *activity1 = @{@"activity":@"Reverse Fly",
                               @"reps":@"8 Repetitions"};
    NSDictionary *activity2 = @{@"activity":@"Lawn Mower Pull",
                               @"reps":@"8 Repetitions"};
    NSDictionary *activity3 = @{@"activity":@"High to Low Rows",
                               @"reps":@"15 Repetitions"};
    self.activities = [NSMutableArray arrayWithObjects:activity, activity1, activity2, activity3, nil];
}

- (IBAction)markActivity:(UIButton*)sender {
    if (sender.backgroundColor == [UIColor clearColor]) {
        sender.backgroundColor = PALightGreenAccent;
    } else {
        sender.backgroundColor = [UIColor clearColor];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ActivityTableViewCell *cell = (ActivityTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    NSDictionary *activityDict = [self.activities objectAtIndex:indexPath.row];
    NSString *activityString = activityDict[@"activity"];
    NSString *reps = activityDict[@"reps"];
    
    cell.activityName.text = activityString;
    cell.repsLabel.text = reps;
    
    cell.activityCheck.layer.borderWidth = 3.0;
    cell.activityCheck.layer.borderColor = PADarkGreenAccentCG;
    [cell.activityButton addTarget:self action:@selector(markActivity:) forControlEvents:UIControlEventTouchUpInside];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"ViewActivity" sender:self];
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
