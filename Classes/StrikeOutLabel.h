/*
 *  Created by Alexander Brausch
 *  Copyright 2010 Alexander Brausch
 */

#import <UIKit/UILabel.h>

@interface StrikeOutLabel : UILabel {
@private
    /**
     * Yes if the label should be scratched
     */
    BOOL _strikeOut;
    
    /**
     * Color of the scratched line
     *
     * If nil the text color is used.
     */
    UIColor* _strikeOutColor;
}

@property(nonatomic, retain, readwrite) UIColor* strikeOutColor;

@property(nonatomic, assign, readwrite, getter=isStrikeOut) BOOL strikeOut;

- (void) dealloc;

@end
