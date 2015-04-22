//
//  URBNSafariActivity.h
//  Pods
//
//  Created by Dustin Bergman on 4/21/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNSafariActivity : UIActivity

@property (nonatomic, strong) UIImage *safariActivityImage;

- (instancetype)initWithURL:(NSURL *)URL;

@end
