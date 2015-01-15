//
//  URBNViewController.m
//  URBNShareKit
//
//  Created by Ryan Garchinsky on 01/15/2015.
//  Copyright (c) 2014 Ryan Garchinsky. All rights reserved.
//

#import "URBNViewController.h"
#import <URBNShareKit/URBNShareKit.h>

@interface URBNViewController ()

@property (strong, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation URBNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)shareButtonTouch:(id)sender {
    URBNActivityViewController *urbnActivityController = [[URBNActivityViewController alloc] init];
}

@end
