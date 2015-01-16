//
//  URBNCopyProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNBodyProvider : UIActivityItemProvider

@property (nonatomic, strong) NSString *defaultBody;
@property (nonatomic, strong) NSString *emailBody;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *textMessageBody;
@property (nonatomic, strong) NSString *twitterBody;
@property (nonatomic, strong) NSString *facebookBody;
@property (nonatomic, strong) NSString *pinterestBody;
@property (nonatomic, strong) NSString *pasteboardBody;

@end
