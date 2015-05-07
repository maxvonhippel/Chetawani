//
//  DetailViewController.m
//  Chetawani
//
//  Created by Max von Hippel on 4/27/15.
//  Copyright (c) 2015 von Hippel Industries. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize webView;
#pragma mark - Managing the detail item



- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *myURL = [NSURL URLWithString: [self.url stringByAddingPercentEscapesUsingEncoding:
                                          NSUTF8StringEncoding]];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    [self.webView loadRequest:request];
    webView.delegate = self;
    [self zoomToFit];
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:[UIDevice currentDevice]];
    
}
-(void)zoomToFit
{
    
    if ([webView respondsToSelector:@selector(scrollView)])
    {
        UIScrollView *scroll=[webView scrollView];
        
        float zoom=webView.bounds.size.width/scroll.contentSize.width;
        [scroll setZoomScale:zoom animated:YES];
    }
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.view viewWithTag:100].hidden = YES;
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

@end
