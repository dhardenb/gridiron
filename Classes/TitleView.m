//
//  TitleView.m
//  Gridiron
//
//  Created by David Hardenbrook on 1/17/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "TitleView.h"

@implementation TitleView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		myLabel = @"blank";
		
		myUiLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 100.0f)];
		[myUiLabel setCenter:CGPointMake(100.0f, 50.0f)];
		myUiLabel.textAlignment = UITextAlignmentCenter;
		myUiLabel.textColor = [UIColor whiteColor];
		myUiLabel.backgroundColor = [UIColor clearColor];
		myUiLabel.adjustsFontSizeToFitWidth = YES;
		[self addSubview:myUiLabel];
    }
    return self;
}

- (void) setLabel:(NSString *)label
{
	myLabel = label;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBFillColor(context, 0.272, 0.135, 0.037, 1.0);
	
	CGContextAddEllipseInRect(context, CGRectMake(0.0, 0.0, 200.0, 100.0));
	
	CGContextFillPath(context);
	
	myUiLabel.text = myLabel;
	
	[myUiLabel setNeedsDisplay];
}

- (void)dealloc
{
    [super dealloc];
}

@end
