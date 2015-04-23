//
//  URBNActivityViewController.m
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import "URBNActivityViewController.h"
#import "URBNSafariActivity.h"

@interface URBNActivityViewController()

@property (nonatomic, assign) BOOL canOpenInSafari;
@property (nonatomic, strong) URBNSafariActivity *safariActivity;

@end

@implementation URBNActivityViewController

#pragma mark - Initilization
- (instancetype)initWithDefaultBody:(NSString *)defaultBody url:(NSURL *)url canOpenInSafari:(BOOL)canOpenInSafari {
    NSAssert(defaultBody, @"You must pass a non-nil defaultBody. Please use the initWithDefaultBody: initalizer and ensure the passed text is not nil");

    URBNBodyProvider *bodyProvider = [URBNBodyProvider new];
    URBNUrlProvider *urlProvider = [URBNUrlProvider new];
    URBNImageProvider *imageProvider = [URBNImageProvider new];
    self.safariActivity = canOpenInSafari ? [[URBNSafariActivity alloc] initWithURL:url] : nil;
    NSArray *applicationActivities = self.safariActivity ? @[self.safariActivity] : nil;
    
    self = [super initWithActivityItems:@[bodyProvider, urlProvider, imageProvider] applicationActivities:applicationActivities];
    if (self) {
        self.bodyProvider = bodyProvider;
        self.bodyProvider.defaultBody = defaultBody;
        
        self.urlProvider = urlProvider;
        self.urlProvider.url = url;
        self.imageProvider = imageProvider;
        
        self.canOpenInSafari = canOpenInSafari;
    }
    
    return self;
}

- (instancetype)initWithActivityItems:(NSArray *)activityItems applicationActivities:(NSArray *)applicationActivities {
    return [self initWithDefaultBody:nil url:nil canOpenInSafari:NO];
}

- (instancetype)init {
    return [self initWithDefaultBody:nil url:nil canOpenInSafari:NO];
}

- (void)setOpenInSafariActivtyImage:(UIImage *)openInSafariImage {
    self.safariActivity.safariActivityImage = openInSafariImage;
}

#pragma mark - Methods
/**
 UIActivityViewController by default accepts a NSArray of excludedActivityTypes. This allows you to 
    pass an array of included activity types. 
 */
 - (void)setIncludedActivityTypes:(NSArray *)includedActivityTypesArray {


    NSArray *activityTypesArray = @[UIActivityTypePostToFacebook,
                               UIActivityTypePostToTwitter,
                               UIActivityTypePostToWeibo,
                               UIActivityTypeMessage,
                               UIActivityTypeMail,
                               UIActivityTypePrint,
                               UIActivityTypeCopyToPasteboard,
                               UIActivityTypeAssignToContact,
                               UIActivityTypeSaveToCameraRoll,
                               UIActivityTypeAddToReadingList,
                               UIActivityTypePostToFlickr,
                               UIActivityTypePostToVimeo,
                               UIActivityTypePostToTencentWeibo,
                               UIActivityTypeAirDrop,
                               kURBNActivityTypePinterest,
                               kURBNActivityTypeOpenInSafari];
     
     if (self.canOpenInSafari) {
         NSMutableArray *mutable = [NSMutableArray arrayWithArray:includedActivityTypesArray];
         [mutable addObject:kURBNActivityTypeOpenInSafari];
         includedActivityTypesArray = [mutable copy];
     }
    
    NSMutableSet *typesSet = [NSMutableSet setWithArray:activityTypesArray];
    NSMutableSet *includedTypesSet = [NSMutableSet setWithArray:includedActivityTypesArray];
    [typesSet minusSet:includedTypesSet];
     
    self.excludedActivityTypes = typesSet.allObjects;
}

@end
