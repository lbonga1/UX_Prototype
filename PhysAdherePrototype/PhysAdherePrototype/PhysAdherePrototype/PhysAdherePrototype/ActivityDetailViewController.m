//
//  ActivityDetailViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "ActivityDetailViewController.h"
#import "AppDelegate.h"

@interface ActivityDetailViewController ()

@property (weak, nonatomic) IBOutlet UIView *painLevelContainer;
@property (weak, nonatomic) IBOutlet UISlider *painSlider;
@property (weak, nonatomic) IBOutlet UIButton *howToButton;

@end

@implementation ActivityDetailViewController

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
    for (UIView *barView in self.painLevelContainer.subviews) {
        barView.layer.borderWidth = 2.0;
        barView.layer.borderColor = PADarkGreenCG;
        barView.backgroundColor = PALightGreenTint;
    }
    
    [self.painSlider setMinimumTrackTintColor:PALightGreenAccent];
    [self.painSlider setMaximumTrackTintColor:PADarkGreenAccent];
    [self.painSlider setThumbTintColor:PADarkGreen];
    [self.painSlider setMinimumValue:0.0];
    [self.painSlider setMaximumValue:10.0];
    [self.painSlider setValue:0.0];
    
    self.howToButton.layer.borderColor = PADarkGreenCG;
    self.howToButton.layer.borderWidth = 1.0;
    self.howToButton.layer.cornerRadius = 12.0;
    self.howToButton.backgroundColor = PALightGreenTint;
}


- (IBAction)didTapHowToButton:(id)sender {
    [self performSegueWithIdentifier:@"HowToVideo" sender:self];
}

- (IBAction)didSlidePainSlider:(UISlider*)sender {
    float sliderValue = sender.value;
    if (sliderValue < 1) {
        [self updatePainBarColorsToLevel:0];
    } else if (1 <= sliderValue && sliderValue < 2) {
        [self updatePainBarColorsToLevel:1];
    } else if (2 <= sliderValue && sliderValue < 3) {
        [self updatePainBarColorsToLevel:2];
    } else if (3 <= sliderValue && sliderValue < 4) {
        [self updatePainBarColorsToLevel:3];
    } else if (4 <= sliderValue && sliderValue < 5) {
        [self updatePainBarColorsToLevel:4];
    } else if (5 <= sliderValue && sliderValue < 6) {
        [self updatePainBarColorsToLevel:5];
    } else if (6 <= sliderValue && sliderValue < 7) {
        [self updatePainBarColorsToLevel:6];
    } else if (7 <= sliderValue && sliderValue < 8) {
        [self updatePainBarColorsToLevel:7];
    } else if (8 <= sliderValue && sliderValue < 9) {
        [self updatePainBarColorsToLevel:8];
    } else if (9 <= sliderValue && sliderValue < 10) {
        [self updatePainBarColorsToLevel:9];
    } else if (sliderValue == 10) {
        [self updatePainBarColorsToLevel:10];
    }
}

- (void)updatePainBarColorsToLevel:(int)level {
    if (level == 0) {
        for (UIView *barView in self.painLevelContainer.subviews) {
            barView.backgroundColor = PALightGreenTint;
        }
    } else if (level == 10) {
        for (UIView *barView in self.painLevelContainer.subviews) {
            barView.backgroundColor = PALightGreenAccent;
        }
    } else {
        for (UIView *barView in self.painLevelContainer.subviews) {
            if (([self.painLevelContainer.subviews indexOfObject:barView]) + 1 > level) {
                barView.backgroundColor = PALightGreenTint;
            } else {
                barView.backgroundColor = PALightGreenAccent;
            }
        }
    }
    
    
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
