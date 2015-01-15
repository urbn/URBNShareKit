//
//  URBNUrlProvider.m
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import "URBNUrlProvider.h"

@implementation URBNUrlProvider

- (BOOL)shouldReturnUrl {
    if (self.activityTypesToDisplayUrl && self.activityTypesToDisplayUrl.count > 0) {
        for (NSString *activityType in self.activityTypesToDisplayUrl) {
            if ([self.activityType isEqualToString:activityType]) {
                return YES;
            }
        }
        return NO;
    }
    return YES;
}

- (id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType {
    return [self shouldReturnUrl] ? self.url : nil;
}

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController {
    return [NSURL new];
}

@end
