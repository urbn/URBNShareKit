//
//  URBNViewController.m
//  URBNShareKit
//
//  Created by Ryan Garchinsky on 01/15/2015.
//  Copyright (c) 2014 Ryan Garchinsky. All rights reserved.
//

/*
 * You will need to run this on a device to see all possible sharing activities. 
 * The simulator does not support most Activity Types.
*/

#import "URBNShareKitExampleVC.h"
#import <URBNShareKit/URBNShareKit.h>

@interface URBNShareKitExampleVC ()

@property (strong, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation URBNShareKitExampleVC

#pragma mark - Actions
- (IBAction)shareButtonTouch:(id)sender {
    URBNActivityViewController *urbnActivityController = [[URBNActivityViewController alloc] initWithDefaultBody:@"This text will be set as the body for any activity types undefined by URBNShareKit, and for any support body texts you do not set below." url:[NSURL URLWithString:@"http://www.google.com"] canOpenInSafari:NO];
    
    [urbnActivityController setIncludedActivityTypes:@[UIActivityTypeCopyToPasteboard, UIActivityTypeMail, UIActivityTypeMessage, UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, kURBNActivityTypePinterest]];
    
    urbnActivityController.bodyProvider.subject = @"My E-Mail Subject";
    urbnActivityController.bodyProvider.emailBody = @"The body of the e-mail can contains HTML tags if you wrap them within HTML tags, doing so will hide the URL you are trying to share though.";
    urbnActivityController.bodyProvider.pasteboardBody = @"This was sent to my pasteboard";
    urbnActivityController.bodyProvider.facebookBody = @"Check out my Facebook post";
    urbnActivityController.bodyProvider.twitterBody = @"Tweet tweet";
    urbnActivityController.bodyProvider.textMessageBody = @"This is a great text message";
    
    urbnActivityController.imageProvider.activityTypesToDisplayImage = @[UIActivityTypeMail];
    urbnActivityController.imageProvider.image = [UIImage imageNamed:@"ron-swanson"];
        
    [self presentViewController:urbnActivityController animated:YES completion:nil];
}

- (IBAction)shareUrlButtonTouched:(id)sender {
    URBNActivityViewController *urbnActivityController = [[URBNActivityViewController alloc] initWithDefaultBody:@"Testing" url:[NSURL URLWithString:@"http://www.urbanoutfitters.com/"] canOpenInSafari:YES];
    
    [urbnActivityController setIncludedActivityTypes:@[UIActivityTypeCopyToPasteboard, UIActivityTypeMail, UIActivityTypeMessage, UIActivityTypePostToFacebook, UIActivityTypePostToTwitter, kURBNActivityTypePinterest, UIActivityTypeAddToReadingList]];
    
    urbnActivityController.imageProvider.activityTypesToDisplayImage = @[UIActivityTypeMail];
    urbnActivityController.imageProvider.image = [UIImage imageNamed:@"ron-swanson"];
    
    [self presentViewController:urbnActivityController animated:YES completion:nil];
}

@end
