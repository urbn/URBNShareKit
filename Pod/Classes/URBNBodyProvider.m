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
    // Use the defaultBody for any body property not set, or an activity type not handled here
    if (activityType == UIActivityTypeMail) {
        return self.emailBody ? self.emailBody : self.defaultBody;
    }
    else if (activityType == UIActivityTypeMessage) {
        return self.textMessageBody ? self.textMessageBody : self.defaultBody;
    }
    else if (activityType == UIActivityTypePostToFacebook) {
        return self.facebookBody ? self.facebookBody : self.defaultBody;
    }
    else if (activityType == UIActivityTypePostToTwitter) {
        return self.twitterBody ? self.twitterBody : self.defaultBody;
    }
    else if (activityType == UIActivityTypeCopyToPasteboard) {
        return self.pasteboardBody ? self.pasteboardBody : self.defaultBody;
    }
    else {
        return self.defaultBody;
    }
    return nil;
}

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController {
    return [NSString string];
}

- (NSString *)activityViewController:(UIActivityViewController *)activityViewController subjectForActivityType:(NSString *)activityType {
    return self.subject;
}

@end
