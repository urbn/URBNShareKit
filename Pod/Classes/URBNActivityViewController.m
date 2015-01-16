//
//  URBNActivityViewController.m
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import "URBNActivityViewController.h"

@interface URBNActivityViewController ()

@end

@implementation URBNActivityViewController

#pragma mark - Initilization
- (instancetype)init {
    URBNBodyProvider *bodyProvider = [URBNBodyProvider new];
    URBNUrlProvider *urlProvider = [URBNUrlProvider new];
    URBNImageProvider *imageProvider = [URBNImageProvider new];
    self = [super initWithActivityItems:@[bodyProvider, urlProvider, imageProvider] applicationActivities:nil];
    if (self) {
        self.bodyProvider = bodyProvider;
        self.urlProvider = urlProvider;
        self.imageProvider = imageProvider;
    }
    return self;
}


/**
 UIActivityViewController by default accepts a NSArray of excludedActivityTypes. This allows you to 
    pass an array of included activity types. 
 */
 - (void)setIncludedActivityTypes:(NSArray *)includedActivityTypesArray {
    NSArray *activityTypesArray = @[UIActivityTypePostToFacebook,
                               UIActivityTypePostToTwitter,
                               UIActivityTypePostToWeibo,
                               UIActivityTypeMessage,
                               UIActivityTypeMail,
                               UIActivityTypePrint,
                               UIActivityTypeCopyToPasteboard,
                               UIActivityTypeAssignToContact,
                               UIActivityTypeSaveToCameraRoll,
                               UIActivityTypeAddToReadingList,
                               UIActivityTypePostToFlickr,
                               UIActivityTypePostToVimeo,
                               UIActivityTypePostToTencentWeibo,
                               UIActivityTypeAirDrop,
                               kURBNActivityTypePinterest];
    
    NSMutableSet *typesSet = [NSMutableSet setWithArray:activityTypesArray];
    NSMutableSet *includedTypesSet = [NSMutableSet setWithArray:includedActivityTypesArray];
    [typesSet minusSet:includedTypesSet];
    
    self.excludedActivityTypes = typesSet.allObjects;
}

@end
