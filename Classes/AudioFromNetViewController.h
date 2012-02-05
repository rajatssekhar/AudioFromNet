//
//  AudioFromNetViewController.h
//  AudioFromNet
//
//  Created by Raja T S Sekhar on 2/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioFromNetViewController : UIViewController {

		AVAudioPlayer *audioPlayer;
}

- (IBAction) playAudio;

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

@end

