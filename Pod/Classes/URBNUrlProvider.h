//
//  URBNUrlProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNUrlProvider : UIActivityItemProvider

@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSArray *activityTypesToDisplayUrl;

@end
