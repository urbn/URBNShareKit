//
//  URBNImageProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNImageProvider : UIActivityItemProvider

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIImage *thumbnailImage;
@property (nonatomic, strong) NSArray *activityTypesToDisplayImage;

@end
