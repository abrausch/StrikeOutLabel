/*
 *  Created by Alexander Brausch
 *  Copyright 2010 Alexander Brausch
 */

#import <UIKit/UIKit.h>

@class StrikeOutLabelViewController;

@interface StrikeOutLabelAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    StrikeOutLabelViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet StrikeOutLabelViewController *viewController;

@end

