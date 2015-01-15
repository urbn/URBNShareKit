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

@end
