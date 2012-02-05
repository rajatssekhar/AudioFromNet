//
//  AudioFromNetViewController.m
//  AudioFromNet
//
//  Created by Raja T S Sekhar on 2/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AudioFromNetViewController.h"

@implementation AudioFromNetViewController

@synthesize audioPlayer;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString *aURL=@"http://tamilmaalai.com/audioandvideo/%2B%20Tamil%20Songs%201939-2010/Nan%20Padum%20Padal/Nan%20Padum%20Padal%20-%20Paadum%20Vanam%20Padi%20%5BS.P.B%2C%20S.%20Janaki%5DTamilmaalai.Com.mp3";
	NSString *escapedUrl = [aURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:escapedUrl];
	
	NSData *audioData = [[NSData alloc] initWithContentsOfURL:fileURL];
	//Initialize the AVAudioPlayer.
	self.audioPlayer = [[AVAudioPlayer alloc] initWithData:audioData error:nil];
		[self.audioPlayer.delegate self];
	[self.audioPlayer prepareToPlay];
	[self.audioPlayer currentTime];
	NSLog(@"Player initialised....");

}


- (IBAction) playAudio {
	NSLog(@"Playing.....");
	[self.audioPlayer play];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
