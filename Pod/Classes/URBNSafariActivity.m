//
//  URBNSafariActivity.m
//  Pods
//
//  Created by Dustin Bergman on 4/21/15.
//
//

#import "URBNSafariActivity.h"
#import "URBNShareKit.h"

@interface URBNSafariActivity ()

@property (nonatomic, strong) NSURL *url;

@end

@implementation URBNSafariActivity

- (instancetype)initWithURL:(NSURL *)URL {
    self = [self init];
    
    if (self) {
        self.url = URL;
    }
    
    return self;
}

#pragma mark - Getter methods
+ (UIActivityCategory)activityCategory{
    return UIActivityCategoryAction;
}

- (NSString *)activityType {
    return kURBNActivityTypeOpenInSafari;
}

- (NSString *)activityTitle {
    return NSLocalizedString(@"Open in Safari", nil);
}

- (UIImage *)activityImage {
    if (self.safariActivityImage) {
        return self.safariActivityImage;
    }
    
    return [UIImage imageNamed:@"URBNShareKit.bundle/safari-white"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES; 
}

- (void)performActivity {
    BOOL completed = NO;
    completed = [[UIApplication sharedApplication] openURL:self.url];
    [self activityDidFinish:completed];
}

@end
