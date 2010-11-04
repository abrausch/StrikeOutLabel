/*
 *  Created by Alexander Brausch
 *  Copyright 2010 Alexander Brausch
 */

#import "StrikeOutLabel.h"

@implementation StrikeOutLabel

@synthesize strikeOutColor;
@synthesize strikeOut;

- (void) drawTextInRect:(CGRect)rect {
    [super drawTextInRect: rect];
    
    if (self.strikeOut) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(context, 1.0);
        
        if (self.strikeOutColor != nil) {
            CGContextSetStrokeColorWithColor(context, self.strikeOutColor.CGColor);
        }
        else {
            CGContextSetStrokeColorWithColor(context, self.textColor.CGColor);
        }
        
        CGFloat lineY = rect.size.height - self.font.leading / 2;
        CGFloat lineStartX = 0;
        CGFloat lineEndX = 0;
        
        CGSize maxSize = CGSizeMake(1000, 1000);
        CGSize textSize = [self.text sizeWithFont: self.font constrainedToSize: maxSize lineBreakMode: self.lineBreakMode];
        
        if (self.textAlignment == UITextAlignmentLeft) {
            lineEndX = lineStartX + textSize.width;
        }
        else if (self.textAlignment == UITextAlignmentCenter) {
            lineStartX = (rect.size.width / 2) - (textSize.width / 2);
            lineEndX = (rect.size.width / 2) + (textSize.width / 2);
        }
        else {
            lineStartX = rect.size.width - textSize.width;
            lineEndX = rect.size.width;
        }
        
        CGContextMoveToPoint(context, lineStartX, lineY);
        CGContextAddLineToPoint(context, lineEndX, lineY);
        CGContextStrokePath(context);   
        
    }
    
}


- (void) dealloc {
    [self->_strikeOutColor release]; self->_strikeOutColor = nil;

    [super dealloc];
}

@end
