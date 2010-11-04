/*
 *  Created by Alexander Brausch
 *  Copyright 2010 Alexander Brausch
 */

#import "StrikeOutLabelView.h"
#import "StrikeOutLabel.h"

@implementation StrikeOutLabelView

@synthesize strikeOutLabel;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

- (void) awakeFromNib {
    self.strikeOutLabel.strikeOut = YES;
    self.strikeOutLabel.text = @"Hello World";
    self.strikeOutLabel.strikeOutColor = [UIColor redColor];
}

- (void)dealloc {
    [self->_strikeOutLabel release]; self->_strikeOutLabel = nil;
    [super dealloc];
}


@end
