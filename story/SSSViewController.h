//
//  SSSViewController.h
//  story
//
//  Created by Mac on 2/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

#define houseX 778
#define houseY 481
#define noraX 928
#define noraY 689

@interface SSSViewController : UIViewController {
    
    MPMoviePlayerViewController *player;
    MPMoviePlayerController *player1;
    MPMoviePlayerController *player2;
    BOOL bLisa;
}

@end
