//
//  URBNActivityViewController.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>
#import "URBNShareKit.h"

@class URBNImageProvider;
@class URBNBodyProvider;
@class URBNUrlProvider;

@interface URBNActivityViewController : UIActivityViewController

/**
 Created on init. Set various body texts before presenting
 */
@property (nonatomic, strong) URBNBodyProvider *bodyProvider;

/**
 Created on init. Set image to be shared before presenting
 */
@property (nonatomic, strong) URBNImageProvider *imageProvider;

/**
 Created on init. Set url to be shared before presenting
 */
@property (nonatomic, strong) URBNUrlProvider *urlProvider;

/**
 This array should contain the UIActivityTypes the share sheet will support
 */
@property (nonatomic, strong) NSArray *includedActivityTypes;

/**
 Initializer takes a defaultBody that will be used for any body text undefined
 */
- (instancetype)initWithDefaultBody:(NSString *)defaultBody;

@end
