//
//  SSSViewController.m
//  story
//
//  Created by Mac on 2/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SSSViewController.h"
//#import "MPMoviePlayerViewController.h"

@implementation SSSViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
//    self.view.backgroundColor = [UIColor redColor];
    
    NSString *url = [[NSBundle mainBundle]
                     pathForResource:@"12_Start"
                     ofType:@"mp4"];
    player =
    [[MPMoviePlayerViewController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url]];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(movieFinishedCallback:)
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    
    //---play partial screen---
//    player.view.frame = /*self.view.bounds;*/CGRectMake(0, 0, 1024, 768);
//    player.view.backgroundColor = [UIColor clearColor];
//    player.controlStyle = MPMovieControlStyleNone;

//    [player prepareToPlay];
    
    
        MPMoviePlayerController* theMovie = [player moviePlayer];
        theMovie.scalingMode = MPMovieScalingModeAspectFit;
        theMovie.fullscreen = TRUE;
        theMovie.controlStyle = MPMovieControlStyleNone;
        theMovie.shouldAutoplay = TRUE;
        theMovie.view.frame = /*self.view.bounds;*/CGRectMake(0, 0, 1024, 768);
    
    [self.view addSubview:player.view];
  
    
    
    
       bLisa = YES;
    
    NSString *url1 = [[NSBundle mainBundle]
                     pathForResource:@"12_Fox"
                     ofType:@"mp4"];
    player1 =
    [[MPMoviePlayerController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url1]];

    NSString *url2 = [[NSBundle mainBundle]
                      pathForResource:@"12_Zayats"
                      ofType:@"mp4"];
    player2 =
    [[MPMoviePlayerController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url2]];

    NSString *url3 = [[NSBundle mainBundle]
                      pathForResource:@"12_Smoke"
                      ofType:@"mp4"];
    player3 =
    [[MPMoviePlayerController alloc]
     initWithContentURL:[NSURL fileURLWithPath:url3]];

//    [[NSNotificationCenter defaultCenter]
//     addObserver:self
//     selector:@selector(movieFinishedCallback:)
//     name:MPMoviePlayerPlaybackDidFinishNotification
//     object:player1];
    
    //---play partial screen---
//    player1.view.frame = /*self.view.bounds;*/CGRectMake(600, 400, 164, 166);
//    player1.view.backgroundColor = [UIColor clearColor];
//    player1.controlStyle = MPMovieControlStyleNone;
//    [player1 prepareToPlay];
//    [player1 stop];
    
//    [self.view addSubview:player1.view];
    
    //---play movie---
//    [player play];
    
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

    bLisa = YES;
    
    //    MPMoviePlayerController *player = [aNotification object];
//    [[NSNotificationCenter defaultCenter]
//     removeObserver:self
//     name:MPMoviePlayerPlaybackDidFinishNotification
//     object:player];    
//    [player autorelease];    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint point = [touch locationInView:self.view];
    NSLog(@"Point: %f %f", point.x, point.y);
    
    CGRect r0 = CGRectMake(bullX - 200, bullY - 200, 400, 400);
    if(bLisa && CGRectContainsPoint(r0, point)) {
        
        NSLog(@"Bull");
        
        //---play partial screen---
//        player.view.frame = /*self.view.bounds;*/CGRectMake(0, 0, 1024, 768);
//        player.view.backgroundColor = [UIColor clearColor];
//        player.controlStyle = MPMovieControlStyleNone;        
//        [self.view addSubview:player.view];
        
        NSString *url = [[NSBundle mainBundle]
                         pathForResource:@"12_Bull"
                         ofType:@"mp4"];
        
        MPMoviePlayerController* mp = player.moviePlayer;
        mp.contentURL = [NSURL fileURLWithPath:url];
        [mp play];
        //[player initWithContentURL:[NSURL fileURLWithPath:url]];
        
        //---play movie---
     //   [player play];
        
    }

    CGRect r1 = CGRectMake(houseX - 100, houseY - 100, 200, 200);
    if(bLisa && CGRectContainsPoint(r1, point)) {
       
        NSLog(@"Lisa");
        
        //---play partial screen---
//            player1.view.frame = /*self.view.bounds;*/CGRectMake(650, 370, 164, 166);
//            player1.view.backgroundColor = [UIColor clearColor];
//            player1.controlStyle = MPMovieControlStyleNone;        
//            [self.view addSubview:player1.view];

        //---play movie---
//        [player1 play];
        
        NSString *url1 = [[NSBundle mainBundle]
                          pathForResource:@"12_Fox"
                          ofType:@"mp4"];
        
        MPMoviePlayerController* mp = player.moviePlayer;
        mp.contentURL = [NSURL fileURLWithPath:url1];
        [mp play];

    }

    CGRect r2 = CGRectMake(noraX - 100, noraY - 100, 200, 200);
    if(CGRectContainsPoint(r2, point)) {
        
        NSLog(@"Nora");
        
        //---play partial screen---
        player2.view.frame = /*self.view.bounds;*/CGRectMake(795, 535, 230, 238);
        player2.view.backgroundColor = [UIColor clearColor];
        player2.controlStyle = MPMovieControlStyleNone;
        //            [player1 prepareToPlay];
        //            [player1 stop];
        
        [self.view addSubview:player2.view];
        
        //---play movie---
        [player2 play];
        
    }
    
    CGRect r3 = CGRectMake(smokeX - 100, smokeY - 100, 200, 200);
    if(CGRectContainsPoint(r3, point)) {
        
        NSLog(@"Smoke");
        
        //---play partial screen---
        player3.view.frame = /*self.view.bounds;*/CGRectMake(600, -350, 350, 794);
        player3.view.backgroundColor = [UIColor clearColor];
        player3.controlStyle = MPMovieControlStyleNone;
        //            [player1 prepareToPlay];
        //            [player1 stop];
        
        [self.view addSubview:player3.view];
        
        //---play movie---
        [player3 play];
        
    }
    
}

- (void)viewDidUnload
{
    
    
    [player release];
    [player1 release];
    [player2 release];
    [player3 release];
    
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
