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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
