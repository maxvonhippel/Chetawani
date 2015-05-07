//
//  MapViewController.m
//  Chetawani
//
//  Created by Max von Hippel on 4/27/15.
//  Copyright (c) 2015 von Hippel Industries. All rights reserved.
//
#import "MapViewController.h"


@interface MapViewController ()

@end

@implementation MapViewController
@synthesize webView;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.openstreetmap.org/#map=13/27.7025/85.3112&layers=HND";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    webView.delegate = self;
    
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
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.view viewWithTag:100].hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
