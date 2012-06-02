//
//  ViewController.m
//  TapForTapAdds
//
//  Created by   on 02/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TapForTapAdView.h"

@interface ViewController ()

@property(nonatomic,retain)TapForTapAdView *adView;
@end

@implementation ViewController
@synthesize adView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGFloat height = 50;
    self.adView = [[TapForTapAdView alloc] initWithFrame: CGRectMake(0, CGRectGetHeight(self.view.frame)-height, CGRectGetWidth(self.view.frame), height)];
    self.adView.age = 29;
    self.adView.gender = MALE;
    self.adView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleWidth;
    self.adView.backgroundColor = [UIColor redColor];
    [self.view addSubview: self.adView];
    
        //self.adView.appId = @"0b4259e0-764f-012f-ecd4-4040b54529c6";
    
        // or [TapForTap setDefaultAppId: @"<YOUR APP ID>"];
        //
        // If you already did this in your app delegate to check in
        // then you don't need to set your app ID here as well.
    
    [self.adView loadAds];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
