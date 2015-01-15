//
//  URBNViewController.m
//  URBNShareKit
//
//  Created by Ryan Garchinsky on 01/15/2015.
//  Copyright (c) 2014 Ryan Garchinsky. All rights reserved.
//

#import "URBNShareKitExampleVC.h"
#import <URBNShareKit/URBNShareKit.h>

@interface URBNShareKitExampleVC ()

@property (strong, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation URBNShareKitExampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (IBAction)shareButtonTouch:(id)sender {
    URBNActivityViewController *urbnActivityController = [[URBNActivityViewController alloc] init];
    [urbnActivityController setIncludedActivityTypes:@[UIActivityTypeCopyToPasteboard, UIActivityTypeMail, UIActivityTypeMessage, UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, kActivityTypePinterest]];
    
    urbnActivityController.bodyProvider.emailSubject = @"My E-Mail Subject";
    urbnActivityController.bodyProvider.emailBody = @"<html>The body of my e-mail which can contain <b>HTML <i>tags</i></b></html>";
    urbnActivityController.bodyProvider.pasteboardBody = @"This was sent to my pasteboard";
    urbnActivityController.bodyProvider.facebookBody = @"Check out my Facebook post";
    urbnActivityController.bodyProvider.twitterBody = @"Tweet tweet";
    urbnActivityController.bodyProvider.textMessageBody = @"This is a great text message";
    urbnActivityController.bodyProvider.pinterestBody = @"Pinning this to my board";
    
    urbnActivityController.imageProvider.activityTypesToDisplayImage = @[UIActivityTypeMail];
    urbnActivityController.imageProvider.image = [UIImage imageNamed:@"ron-swanson"];
    
    urbnActivityController.urlProvider.url = [NSURL URLWithString:@"http://www.google.com"];
    
    [self showViewController:urbnActivityController sender:self];
}

@end
