//
//  ActivityTableViewCell.h
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *activityName;
@property (weak, nonatomic) IBOutlet UILabel *repsLabel;
@property (weak, nonatomic) IBOutlet UIView *activityCheck;
@property (weak, nonatomic) IBOutlet UIButton *activityButton;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *checkImage;

@end
