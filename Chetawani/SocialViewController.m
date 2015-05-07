//
//  SocialViewController.m
//  Chetawani
//
//  Created by Max von Hippel on 5/6/15.
//  Copyright (c) 2015 von Hippel Industries. All rights reserved.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:[UIDevice currentDevice]];
}
- (void) orientationChanged:(NSNotification *)note{
    UIDevice * device = [UIDevice currentDevice];
    switch(device.orientation)
    {
        case UIDeviceOrientationPortrait:
            
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            
            break;
        case UIDeviceOrientationLandscapeLeft:
            
            break;
        case UIDeviceOrientationLandscapeRight:
            
            break;
            
        default:
            break;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)messageHelp:(id)sender {
    MFMessageComposeViewController *messageVC = [[MFMessageComposeViewController alloc] init];
    
    messageVC.body = @"HELP (write what & where you need help here)";
    messageVC.recipients = @[@"6040"];
    messageVC.messageComposeDelegate = self;
    
    [self presentViewController:messageVC animated:NO completion:NULL];
}
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    switch (result) {
        case MessageComposeResultCancelled:
            NSLog(@"Message was cancelled");
            [self dismissViewControllerAnimated:YES completion:NULL];             break;
        case MessageComposeResultFailed:
            NSLog(@"Message failed");
            [self dismissViewControllerAnimated:YES completion:NULL];             break;
        case MessageComposeResultSent:
            NSLog(@"Message was sent");
            [self dismissViewControllerAnimated:YES completion:NULL];             break;
        default:             
            break;     
    } 
}

- (IBAction)tweetHelp:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"#NepalQuakeRelief "];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry :("
                                                        message:@"Your Twitter account needs to be set up in the iPhone Settings app"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)goToRebuildingNepalFacebookPage:(id)sender {
    
    
    NSURL *facebookURL = [NSURL URLWithString:@"fb://profile/895904013784094"];
    if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
        [[UIApplication sharedApplication] openURL:facebookURL];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/savefornepal"]];
    }
}


- (IBAction)goToNepalEarthquakeCommunityFacebookPage:(id)sender {
    
    
    NSURL *facebookURL = [NSURL URLWithString:@"fb://profile/364163063793855"];
    if ([[UIApplication sharedApplication] canOpenURL:facebookURL]) {
        [[UIApplication sharedApplication] openURL:facebookURL];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/NepalEarthquake2015News?fref=ts&ref=br_tf"]];
    }

}
@end
