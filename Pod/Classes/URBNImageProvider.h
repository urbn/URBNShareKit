//
//  URBNImageProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNImageProvider : UIActivityItemProvider

/**
 The image you want attached to the share activities
 */
@property (nonatomic, strong) UIImage *image;

/**
 The thumbnail image you want attached to the share activities.
 If none is passed, the image is used as the thumbnail
 */
@property (nonatomic, strong) UIImage *thumbnailImage;

/**
 This array should contain the UIActivityTypes you want the image attached to. See all types in URBNShareKit.h
 */
@property (nonatomic, strong) NSArray *activityTypesToDisplayImage;

@end
