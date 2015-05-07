//
//  SocialViewController.h
//  Chetawani
//
//  Created by Max von Hippel on 5/6/15.
//  Copyright (c) 2015 von Hippel Industries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Twitter/Twitter.h>
@interface SocialViewController : UIViewController <MFMessageComposeViewControllerDelegate, UIAlertViewDelegate>
- (IBAction)messageHelp:(id)sender;
- (IBAction)tweetHelp:(id)sender;
- (IBAction)goToRebuildingNepalFacebookPage:(id)sender;
- (IBAction)goToNepalEarthquakeCommunityFacebookPage:(id)sender;

@end
