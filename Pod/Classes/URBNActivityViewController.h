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
 *  This image will override the default Safari Activity Image
 */

@property (nonatomic, strong) UIImage *openInSafariActivtyImage;

/**
 *  Initalizer used when sharing a URL and displaying the `Open In Safari` option on the share sheet
 *
 *  @param defaultBody     Body text used for all activities, unless they are set explicity after initialization
 *  @param url             The url you wish to share
 *  @param canOpenInSafari Whether you wish to display the `Open In Safari` option or not
 *
 *  @return
 */
- (instancetype)initWithDefaultBody:(NSString *)defaultBody url:(NSURL *)url canOpenInSafari:(BOOL)canOpenInSafari NS_DESIGNATED_INITIALIZER;

@end
