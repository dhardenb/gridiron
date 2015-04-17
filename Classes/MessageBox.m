//
//  MessageBox.m
//  Gridiron
//
//  Created by David Hardenbrook on 4/27/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MessageBox.h"

@implementation MessageBox

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
	{
		// Home Name
		myMessage = [[UITextView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [self frame].size.width*0.90f, [self frame].size.height)];
		[myMessage setCenter:CGPointMake([self frame].size.width*0.5f, [self frame].size.height*0.5f)];
		// myMessage.textAlignment = UITextAlignmentCenter;
		myMessage.textColor = [UIColor yellowColor];
		myMessage.backgroundColor = [UIColor clearColor];
		myMessage.editable = NO;
		// myMessage.adjustsFontSizeToFitWidth = YES;
		[self addSubview:myMessage];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
	
	myMessage.text = [GameManager getPlayResultMessage];
	
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
