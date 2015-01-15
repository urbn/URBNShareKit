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

@property (nonatomic, strong) URBNBodyProvider *bodyProvider;
@property (nonatomic, strong) URBNImageProvider *imageProvider;
@property (nonatomic, strong) URBNUrlProvider *urlProvider;
@property (nonatomic, strong) NSArray *includedActivityTypes;

- (void)setIncludedActivityTypes:(NSArray *)includedActivityTypesArray;

@end
