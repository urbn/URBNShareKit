//
//  URBNImageProvider.m
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import "URBNImageProvider.h"

@implementation URBNImageProvider

- (BOOL)shouldReturnImage {
    if (self.activityTypesToDisplayImage && self.activityTypesToDisplayImage.count > 0) {
        for (NSString *activityType in self.activityTypesToDisplayImage) {
            if ([self.activityType isEqualToString:activityType]) {
                return YES;
            }
        }
        return NO;
    }
    return YES;
}

- (UIImage *)activityViewController:(UIActivityViewController *)activityViewController thumbnailImageForActivityType:(NSString *)activityType suggestedSize:(CGSize)size {
    return [self shouldReturnImage] ? (self.thumbnailImage ? self.thumbnailImage : self.image) : nil;
}

- (id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType {
    return [self shouldReturnImage] ? self.image : nil;
}

@end
