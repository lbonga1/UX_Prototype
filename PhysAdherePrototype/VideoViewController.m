//
//  VideoViewController.m
//  PhysAdherePrototype
//
//  Created by Lauren Bongartz on 12/18/17.
//  Copyright © 2017 Lauren Bongartz. All rights reserved.
//

#import "VideoViewController.h"
#import "AppDelegate.h"

@interface VideoViewController () < UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"How-To";
    [self.navigationItem.leftBarButtonItem setTintColor:PADarkGreen];
    self.activityIndicator.color = [UIColor colorWithRed:49/255.0 green:49/255.0 blue:49/255.0 alpha:1.0];
    [self loadWebView];
}

- (void)loadWebView {
    NSString *urlAddress = @"https://www.youtube.com/watch?v=8MyjVqDxfSc";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
    self.webView.delegate = self;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicator setHidesWhenStopped:YES];
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicator stopAnimating];
}

@end
