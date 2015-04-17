//
//  PlayResultsView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PlayResultsView.h"

@implementation PlayResultsView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, 30)];
		myHeader.textAlignment = UITextAlignmentCenter;
		myHeader.textColor = [UIColor whiteColor];
		myHeader.backgroundColor = [UIColor clearColor];
		myHeader.text = @"Play Results";
		[self addSubview:myHeader];
		
		myMessage = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, [self frame].size.width-20, [self frame].size.height-60)];
		myMessage.textColor = [UIColor whiteColor];
		myMessage.backgroundColor = [UIColor clearColor];
		myMessage.numberOfLines = 0;
		[self addSubview:myMessage];
		
		myCancelButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-220, [self frame].size.height-35, 100, 25)];
		[myCancelButton setUserInteractionEnabled:YES];
		myCancelButton.backgroundColor = [UIColor clearColor];
		[myCancelButton setType:CANCEL_NEW_GAME_BUTTON];
		[myCancelButton setLabel:@"Cancel"];
		[self addSubview:myCancelButton];
		[myCancelButton release];
		
		myReadyButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myReadyButton setUserInteractionEnabled:YES];
		myReadyButton.backgroundColor = [UIColor clearColor];
		[myReadyButton setType:CLEAR_PLAY_RESULTS_BUTTON];
		[myReadyButton setLabel:@"Ready"];
		[self addSubview:myReadyButton];
		[myReadyButton release];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBStrokeColor(context,  0.0, 0.0, 0.0, 1.0);
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.9);
	
	CGRect rrect = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
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
	
	myMessage.text = [GameManager getCommentary];
	
	if ([GameManager getGameState] == DISPLAY_EVENT_STATE)
	{
		myHeader.text = @"";
		myCancelButton.hidden = TRUE;
		[myReadyButton setType:CLEAR_PLAY_RESULTS_BUTTON];
		[myReadyButton setLabel:@">"];
	}
	else if ([GameManager getGameState] == VERIFY_NEW_GAME_STATE ||
			 [GameManager getGameState] == VERIFY_THE_DRIVE_MODE_STATE)
	{
		myHeader.text = @"New Game Warning";
		myCancelButton.hidden = FALSE;
		[myReadyButton setType:VERIFY_NEW_GAME_BUTTON];
		[myReadyButton setLabel:@"Continue!"];
	}
	else
	{
		myHeader.text = @"Play Results";
		myCancelButton.hidden = TRUE;
		[myReadyButton setType:CLEAR_PLAY_RESULTS_BUTTON];
		[myReadyButton setLabel:@">"];
	}

	[myHeader setNeedsDisplay];
	[myMessage setNeedsDisplay];
	[myCancelButton setNeedsDisplay];
	[myReadyButton setNeedsDisplay];
}

- (void)askQuestion:(int)promptButton
{	
	[(id<AskQuestions>)self.nextResponder askQuestion:promptButton];
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
