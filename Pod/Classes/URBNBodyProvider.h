//
//  URBNCopyProvider.h
//  Pods
//
//  Created by Ryan Garchinsky on 1/15/15.
//
//

/*
 Notes:
 - Pinterest activity does not support body text, only images
*/

#import <UIKit/UIKit.h>

@interface URBNBodyProvider : UIActivityItemProvider

/**
 This text is used for all body properties that are not set, as well as
    activitity types that are not handled 
 */
@property (nonatomic, strong) NSString *defaultBody;

/**
 The text passed to the email body field. This can contain HTML tags,
    but they must be wrapped in <html> .. </html> to get rendered
 */
@property (nonatomic, strong) NSString *emailBody;

/**
 If an activity type accepts a subject, this is what is passed. 
    i.e. email subject
 */
@property (nonatomic, strong) NSString *subject;

/**
 The text passed to the message field in a text message
 */
@property (nonatomic, strong) NSString *textMessageBody;

/**
 The text passed to the the Tweet composer sheet
 */
@property (nonatomic, strong) NSString *twitterBody;

/**
 The text passed to the the Facebook post composer sheet
 */
@property (nonatomic, strong) NSString *facebookBody;

/**
 The text passed to the the the devices paste board
 */
@property (nonatomic, strong) NSString *pasteboardBody;

@end
