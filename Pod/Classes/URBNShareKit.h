//
//  URBNShareKit.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

/**
 UIActivityType Constants
 
 NSString *const UIActivityTypePostToFacebook;
 NSString *const UIActivityTypePostToTwitter;
 NSString *const UIActivityTypePostToWeibo;
 NSString *const UIActivityTypeMessage;
 NSString *const UIActivityTypeMail;
 NSString *const UIActivityTypePrint;
 NSString *const UIActivityTypeCopyToPasteboard;
 NSString *const UIActivityTypeAssignToContact;
 NSString *const UIActivityTypeSaveToCameraRoll;
 NSString *const UIActivityTypeAddToReadingList;
 NSString *const UIActivityTypePostToFlickr;
 NSString *const UIActivityTypePostToVimeo;
 NSString *const UIActivityTypePostToTencentWeibo;
 NSString *const UIActivityTypeAirDrop;
 NSString *const kURBNActivityTypePinterest;

 Read more about each type here:
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIActivity_Class/index.html
 */

#import <Foundation/Foundation.h>
#import "URBNActivityViewController.h"
#import "URBNBodyProvider.h"
#import "URBNImageProvider.h"
#import "URBNUrlProvider.h"

extern NSString *const kURBNActivityTypePinterest;
extern NSString *const kURBNActivityTypeOpenInSafari;

@interface URBNShareKit : NSObject

@end
