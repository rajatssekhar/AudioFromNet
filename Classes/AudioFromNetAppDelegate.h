//
//  AudioFromNetAppDelegate.h
//  AudioFromNet
//
//  Created by Raja T S Sekhar on 2/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AudioFromNetViewController;

@interface AudioFromNetAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AudioFromNetViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AudioFromNetViewController *viewController;

@end

