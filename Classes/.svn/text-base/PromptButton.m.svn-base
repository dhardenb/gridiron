//
//  PromptButton.m
//  Gridiron
//
//  Created by David Hardenbrook on 1/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PromptButton.h"

@implementation PromptButton

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		myCurrentSelectionState = CURRENTLY_NOT_SELECTED;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	if ((myState == NOT_PUSHED_STATE) && (self.userInteractionEnabled == YES))
	{
		if (myCurrentSelectionState == CURRENTLY_SELECTED)
		{
			// Red
			CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
			CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
		}
		else if (myCurrentSelectionState == CURRENTLY_NOT_SELECTED)
		{
            // Gray
			CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
			CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
		}
	}
	else
	{
		// Gray
		CGContextSetRGBFillColor(context, 0.25, 0.25, 0.25, 1.0);
		CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
	}
	
	float offset = [self frame].size.height * .1;
	
	myButtonRectangle = CGRectMake(offset / 2, offset / 2, [self frame].size.width - offset, [self frame].size.height - offset);
	
	CGFloat radius = ([self frame].size.height - offset) / 2;
	
	CGFloat minx = CGRectGetMinX(myButtonRectangle), midx = CGRectGetMidX(myButtonRectangle), maxx = CGRectGetMaxX(myButtonRectangle);
	CGFloat miny = CGRectGetMinY(myButtonRectangle), midy = CGRectGetMidY(myButtonRectangle), maxy = CGRectGetMaxY(myButtonRectangle);
	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	
	CGContextClosePath(context);
    
	CGContextDrawPath(context, kCGPathFillStroke);
    
    CGContextSaveGState(context);
    CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
    UIFont *font = [UIFont fontWithName:@"Freshman" size:self.bounds.size.height * 0.5];
    NSString *string = myText;
    CGSize textSize = [string sizeWithFont:font];
    [string drawAtPoint:CGPointMake(self.bounds.size.width * 0.5 - textSize.width * 0.5, self.bounds.size.height * 0.5 - textSize.height * 0.5) withFont:font];
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextRestoreGState(context);
}

- (void) setType:(int)type
{
	myType = type;
}

- (void) setLabel:(NSString *)label
{
	myText = label;
}

- (void) setState:(int)state
{
	myState = state;
}

- (void) selected:(BOOL)currenltySelected
{
	if (currenltySelected == YES)
	{
		myCurrentSelectionState = CURRENTLY_SELECTED;
	}
	else
	{
		myCurrentSelectionState = CURRENTLY_NOT_SELECTED;
	}
	
	[self setNeedsDisplay];
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	[self setState:PUSHED_STATE];
	[self setNeedsDisplay];
}

- (void) touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	[self setState:NOT_PUSHED_STATE];
	[self setNeedsDisplay];
	[(id<AskQuestions>)self.superview askQuestion:myType];
}

- (void)dealloc {
    [super dealloc];
}

@end