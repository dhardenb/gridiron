//
//  GameModeView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GameModeView.h"

@implementation GameModeView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, 30)];
		myHeader.textAlignment = UITextAlignmentCenter;
		myHeader.textColor = [UIColor whiteColor];
		myHeader.backgroundColor = [UIColor clearColor];
		myHeader.text = @"Game Mode";
		[self addSubview:myHeader];
		
		myResumeCurrentGameButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+30, 200, 25)];
		[myResumeCurrentGameButton setUserInteractionEnabled:YES];
		myResumeCurrentGameButton.backgroundColor = [UIColor clearColor];
		[myResumeCurrentGameButton setType:RESUME_CURRENT_GAME_BUTTON];
		[myResumeCurrentGameButton setLabel:@"Resume Current Game"];
		[self addSubview:myResumeCurrentGameButton];
		[myResumeCurrentGameButton release];
		
		myStartNewGameButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+65, 200, 25)];
		[myStartNewGameButton setUserInteractionEnabled:YES];
		myStartNewGameButton.backgroundColor = [UIColor clearColor];
		[myStartNewGameButton setType:START_NEW_GAME_BUTTON];
		[myStartNewGameButton setLabel:@"Start New Game"];
		[self addSubview:myStartNewGameButton];
		[myStartNewGameButton release];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBStrokeColor(context,  0.543, 0.270, 0.074, 1.0);
	CGContextSetRGBFillColor(context, 0.543, 0.270, 0.074, 1.0);
	
	CGRect rrect = CGRectMake(0, 0, [self frame].size.width, [self frame].size.height);
	CGFloat radius = 30.0;
	
	CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
	CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect);
	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	
	CGContextClosePath(context);
	CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)askQuestion:(int)promptButton
{	
	[self.nextResponder askQuestion:promptButton];
}

- (void)hide
{
	if (isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 1.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 0.0;
		
		[UIView commitAnimations];
		
		isVisable = FALSE;
	}
}

- (void)show
{
	if (!isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 0.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 1.0;
		
		[UIView commitAnimations];
		
		isVisable = TRUE;
	}
}

- (void)dealloc
{
    [super dealloc];
}

@end