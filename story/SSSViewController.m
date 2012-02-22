//
//  SSSViewController.m
//  story
//
//  Created by Mac on 2/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SSSViewController.h"
//#import "MPMoviePlayerViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation SSSViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSString *url = [[NSBundle mainBundle]
                     pathForResource:@"Bull"
                     ofType:@"mov"];
    MPMoviePlayerController *player =
    [[MPMoviePlayerController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url]];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(movieFinishedCallback:)
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    
    //---play partial screen---
    player.view.frame = CGRectMake(184, 200, 400, 300);
    player.view.backgroundColor = [UIColor clearColor];
    player.controlStyle = MPMovieControlStyleNone;

    [self.view addSubview:player.view];
    
    //---play movie---
    [player play];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *moviePath = [bundle pathForResource:@"Bull" ofType:@"mov"];
//    NSURL  *movieURL = [NSURL fileURLWithPath:moviePath];
//    MPMoviePlayerViewController* movieView = [[MPMoviePlayerViewController alloc] initWithContentURL: movieURL];
//    MPMoviePlayerController* theMovie = [movieView moviePlayer];
//    theMovie.scalingMode = MPMovieScalingModeAspectFit;
//    theMovie.fullscreen = TRUE;
//    theMovie.controlStyle = MPMovieControlStyleNone;
//    theMovie.shouldAutoplay = TRUE;
//    
////    [[[UIApplication sharedApplication] keyWindow] addSubview: movieView.view];
//    [self.view addSubview:movieView.view];
}

- (void) movieFinishedCallback:(NSNotification*) aNotification {
    MPMoviePlayerController *player = [aNotification object];
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];    
    [player autorelease];    
}

- (void)viewDidUnload
{
    
    
    
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *moviePath = [bundle pathForResource:@"Bull" ofType:@"mov"];
//    NSURL  *movieURL = [NSURL fileURLWithPath:moviePath];
//    MPMoviePlayerViewController* movplayer = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
//    movplayer.moviePlayer.controlStyle = MPMovieControlStyleNone;
//    movplayer.view.backgroundColor = [UIColor grayColor];
//    movplayer.view.frame = CGRectMake(100, 100, 100, 100);//self.view.bounds;
//    //movplayer.view.frame = self.view.bounds;
//    movplayer.moviePlayer.fullscreen = NO;
//    [self.view addSubview:movplayer.view];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
