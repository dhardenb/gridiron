//
//  ZoneSelector.m
//  Gridiron
//
//  Created by David Hardenbrook on 3/1/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ZoneSelector.h"

@implementation ZoneSelector

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
    }
    return self;
}

- (void)setType:(int)type
{
	myType = type;
}

- (void)setCurrentState:(int)state
{
	myCurrentState = state;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetLineWidth(context, 2.0);
	CGContextSetRGBStrokeColor(context, 1.0, 1.0, 0.0, 1.0);

	CGContextAddEllipseInRect(context, CGRectMake(5, 5, 30, 30));
		
	CGContextMoveToPoint(context, 20, 5);
	CGContextAddLineToPoint(context, 20, 15);
		
	CGContextMoveToPoint(context, 25, 20);
	CGContextAddLineToPoint(context, 35, 20);
		
	CGContextMoveToPoint(context, 20, 25);
	CGContextAddLineToPoint(context, 20, 35);
		
	CGContextMoveToPoint(context, 5, 20);
	CGContextAddLineToPoint(context, 15, 20);
		
	CGContextStrokePath(context);
}

- (void)dealloc
{
    [super dealloc];
}

@end
