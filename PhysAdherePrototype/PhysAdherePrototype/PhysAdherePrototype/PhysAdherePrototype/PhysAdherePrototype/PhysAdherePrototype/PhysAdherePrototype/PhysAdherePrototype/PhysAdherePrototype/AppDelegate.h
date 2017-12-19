//
//  AppDelegate.h
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/17/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PADarkGreen [UIColor colorWithRed:0.18 green:0.57 blue:0.59 alpha:1.0]
#define PADarkGreenAccent [UIColor colorWithRed:0.27 green:0.72 blue:0.73 alpha:1.0]
#define PALightGreenAccent [UIColor colorWithRed:0.53 green:0.87 blue:0.84 alpha:1.0]
#define PALightGreenTint [UIColor colorWithRed:0.87 green:0.96 blue:0.95 alpha:1.0]

#define PADarkGreenCG [UIColor colorWithRed:0.18 green:0.57 blue:0.59 alpha:1.0].CGColor
#define PADarkGreenAccentCG [UIColor colorWithRed:0.27 green:0.72 blue:0.73 alpha:1.0].CGColor
#define PALightGreenAccentCG [UIColor colorWithRed:0.53 green:0.87 blue:0.84 alpha:1.0].CGColor
#define PALightGreenTintCG [UIColor colorWithRed:0.87 green:0.96 blue:0.95 alpha:1.0].CGColor

#define PABackgroundGrey [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0]
#define PALightAccentGrey [UIColor colorWithRed:0.99 green:0.99 blue:0.99 alpha:1.0]
#define PATextGrey [UIColor colorWithRed:0.19 green:0.19 blue:0.19 alpha:1.0]

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

