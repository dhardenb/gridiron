//
//  kickoffView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "KickoffView.h"

@implementation KickoffView

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
		[self addSubview:myHeader];
		
		myNormalKickOffButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+30, 200, 25)];
		[myNormalKickOffButton setUserInteractionEnabled:YES];
		myNormalKickOffButton.backgroundColor = [UIColor clearColor];
		[myNormalKickOffButton setType:NORMAL_KICK_OFF_BUTTON];
		[myNormalKickOffButton setLabel:@"Normal Kick"];
		[self addSubview:myNormalKickOffButton];
		[myNormalKickOffButton release];
		
		mySquibKickOffButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+65, 200, 25)];
		[mySquibKickOffButton setUserInteractionEnabled:YES];
		mySquibKickOffButton.backgroundColor = [UIColor clearColor];
		[mySquibKickOffButton setType:SQUIB_KICK_OFF_BUTTON];
		[mySquibKickOffButton setLabel:@"Squib Kick"];
		[self addSubview:mySquibKickOffButton];
		[mySquibKickOffButton release];
		
		myOnsideKickOffButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+100, 200, 25)];
		[myOnsideKickOffButton setUserInteractionEnabled:YES];
		myOnsideKickOffButton.backgroundColor = [UIColor clearColor];
		[myOnsideKickOffButton setType:ONSIDE_KICK_OFF_BUTTON];
		[myOnsideKickOffButton setLabel:@"Onside Kick"];
		[self addSubview:myOnsideKickOffButton];
		[myOnsideKickOffButton release];
		
		myReadyButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myReadyButton setUserInteractionEnabled:YES];
		myReadyButton.backgroundColor = [UIColor clearColor];
		[myReadyButton setType:KICKOFF_READY_BUTTON];
		[myReadyButton setLabel:@"Ready"];
		[self addSubview:myReadyButton];
		[myReadyButton release];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	if ([GameManager getPossession] == 0)
	{
		myHeader.text = @"Home Team - Select Kick";
	}
	else
	{
		myHeader.text = @"Away Team - Select Kick";
	}
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBStrokeColor(context,  0.0, 0.0, 0.0, 1.0);
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.9);
	
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
	
	int AttackZoneSelected = [GameManager getAttackZoneSelected];
	
	if (AttackZoneSelected == NORMAL_KICK_OFF)
	{
		[myNormalKickOffButton selected:YES];
		[mySquibKickOffButton selected:NO];
		[myOnsideKickOffButton selected:NO];
	}
	else if (AttackZoneSelected == SQUIB_KICK_OFF)
	{
		[myNormalKickOffButton selected:NO];
		[mySquibKickOffButton selected:YES];
		[myOnsideKickOffButton selected:NO];
	}
	else if (AttackZoneSelected == ONSIDE_KICK_OFF)
	{
		[myNormalKickOffButton selected:NO];
		[mySquibKickOffButton selected:NO];
		[myOnsideKickOffButton selected:YES];
	}
	
	CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)askQuestion:(int)promptButton
{	
	if (promptButton == NORMAL_KICK_OFF_BUTTON)
	{
		[GameManager setAttackZoneSelected:NORMAL_KICK_OFF];
	}
	else if (promptButton == SQUIB_KICK_OFF_BUTTON)
	{
		[GameManager setAttackZoneSelected:SQUIB_KICK_OFF];
	}
	else if (promptButton == ONSIDE_KICK_OFF_BUTTON)
	{
		[GameManager setAttackZoneSelected:ONSIDE_KICK_OFF];
	}
	else
	{
		[(id<AskQuestions>)self.nextResponder askQuestion:promptButton];
	}
	
	[self setNeedsDisplay];
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
