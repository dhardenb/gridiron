//
//  PickDefensiveStanceView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/2/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PickDefensiveStanceView.h"

@implementation PickDefensiveStanceView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame])
	{
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{	
	// Create a black rectangle that is fills the entire view
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetRGBStrokeColor(context,  0.94, 0.75, 0.00, 1.0);
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextAddRect(context, CGRectMake(0.0, 0.0, [self frame].size.width, [self frame].size.height));
	CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)dealloc
{
    [super dealloc];
}

@end
