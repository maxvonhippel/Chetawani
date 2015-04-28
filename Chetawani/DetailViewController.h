//
//  DetailViewController.h
//  Chetawani
//
//  Created by Max von Hippel on 4/27/15.
//  Copyright (c) 2015 von Hippel Industries. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (copy, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webView;



@end

