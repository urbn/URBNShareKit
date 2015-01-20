//
//  URBNUrlProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNUrlProvider : UIActivityItemProvider

/**
 The Url you want attached to the share activities
 */
@property (nonatomic, strong) NSURL *url;

/**
 This array should contain the UIActivityTypes you want the Url attached to. See all types in URBNShareKit.h
 */
@property (nonatomic, strong) NSArray *activityTypesToDisplayUrl;

@end
