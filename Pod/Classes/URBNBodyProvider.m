//
//  URBNCopyProvider.m
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import "URBNBodyProvider.h"
#import "URBNShareKit.h"

@implementation URBNBodyProvider

- (id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType {
    // If a defaultBody was set, use that for all copy
    if (self.defaultBody) {
        return self.defaultBody;
    }
    else {
        if (activityType == UIActivityTypeMail) {
            return self.emailBody;
        }
        else if (activityType == UIActivityTypeMessage) {
            return self.textMessageBody;
        }
        else if (activityType == UIActivityTypePostToFacebook) {
            return self.facebookBody;
        }
        else if (activityType == UIActivityTypePostToTwitter) {
            return self.twitterBody;
        }
        else if (activityType == UIActivityTypePostToTwitter) {
            return self.twitterBody;
        }
        else if (activityType == UIActivityTypeCopyToPasteboard) {
            return self.pasteboardBody;
        }
        else if (activityType == kActivityTypePinterest) {
            return self.pinterestBody;
        }
    }
    return nil;
}

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController {
    return [NSString string];
}

- (NSString *)activityViewController:(UIActivityViewController *)activityViewController subjectForActivityType:(NSString *)activityType {
    return self.emailSubject;
}

@end
