/*
 *  Created by Alexander Brausch
 *  Copyright 2010 Alexander Brausch
 */

#import <UIKit/UIKit.h>

@class StrikeOutLabel;

@interface StrikeOutLabelView : UIView {
@private
    StrikeOutLabel* _strikeOutLabel;
}

@property (nonatomic, retain) IBOutlet StrikeOutLabel* strikeOutLabel;

@end
