//
//  DefensiveStanceView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DefensiveStanceView.h"

@implementation DefensiveStanceView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		// Rushing Zones
		
		mySweepLeft = [[ZoneView alloc] initWithFrame:CGRectMake(10, 160, 84, 40)];
		mySweepLeft.backgroundColor = [UIColor clearColor];
		[mySweepLeft setType:RUSHING_ZONE];
		[mySweepLeft setZone:LEFT_SWEEP_RUSHING_LANE];
		[self addSubview:mySweepLeft];
		[mySweepLeft release];
		
		myOffTackleLeft = [[ZoneView alloc] initWithFrame:CGRectMake(104, 160, 84, 40)];
		myOffTackleLeft.backgroundColor = [UIColor clearColor];
		[myOffTackleLeft setType:RUSHING_ZONE];
		[myOffTackleLeft setZone:LEFT_OFFTACKLE_RUSHING_LANE];
		[self addSubview:myOffTackleLeft];
		[myOffTackleLeft release];
		
		myOffGuardLeft = [[ZoneView alloc] initWithFrame:CGRectMake(198, 160, 84, 40)];
		myOffGuardLeft.backgroundColor = [UIColor clearColor];
		[myOffGuardLeft setType:RUSHING_ZONE];
		[myOffGuardLeft setZone:LEFT_INSIDE_RUSHING_LANE];
		[self addSubview:myOffGuardLeft];
		[myOffGuardLeft release];
		
		myOffTackleRight = [[ZoneView alloc] initWithFrame:CGRectMake(292, 160, 84, 40)];
		myOffTackleRight.backgroundColor = [UIColor clearColor];
		[myOffTackleRight setType:RUSHING_ZONE];
		[myOffTackleRight setZone:RIGHT_OFFTACKLE_RUSHING_LANE];
		[self addSubview:myOffTackleRight];
		[myOffTackleRight release];
		
		mySweepRight = [[ZoneView alloc] initWithFrame:CGRectMake(386, 160, 84, 40)];
		mySweepRight.backgroundColor = [UIColor clearColor];
		[mySweepRight setType:RUSHING_ZONE];
		[mySweepRight setZone:RIGHT_SWEEP_RUSHING_LANE];
		[self addSubview:mySweepRight];
		[mySweepRight release];
		
		// Passing Zones
		
		myShortLeftZone = [[ZoneView alloc] initWithFrame:CGRectMake(10, 115, 146, 40)];
		myShortLeftZone.backgroundColor = [UIColor clearColor];
		myShortLeftZone.tag = SHORT_LEFT_PASSING_ZONE;
		[myShortLeftZone setType:PASSING_ZONE];
		[myShortLeftZone setZone:SHORT_LEFT_PASSING_ZONE];
		[self addSubview:myShortLeftZone];
		[myShortLeftZone release];
		
		myShortMiddleZone = [[ZoneView alloc] initWithFrame:CGRectMake(167, 115, 146, 40)];
		myShortMiddleZone.backgroundColor = [UIColor clearColor];
		myShortMiddleZone.tag = SHORT_MIDDLE_PASSING_ZONE;
		[myShortMiddleZone setType:PASSING_ZONE];
		[myShortMiddleZone setZone:SHORT_MIDDLE_PASSING_ZONE];
		[self addSubview:myShortMiddleZone];
		[myShortMiddleZone release];
		
		myShortRightZone = [[ZoneView alloc] initWithFrame:CGRectMake(324, 115, 146, 40)];
		myShortRightZone.backgroundColor = [UIColor clearColor];
		myShortRightZone.tag = SHORT_RIGHT_PASSING_ZONE;
		[myShortRightZone setType:PASSING_ZONE];
		[myShortRightZone setZone:SHORT_RIGHT_PASSING_ZONE];
		[self addSubview:myShortRightZone];
		[myShortRightZone release];
		
		myMediumLeftZone = [[ZoneView alloc] initWithFrame:CGRectMake(10, 70, 225, 40)];
		myMediumLeftZone.backgroundColor = [UIColor clearColor];
		myMediumLeftZone.tag = MIDDLE_LEFT_PASSING_ZONE;
		[myMediumLeftZone setType:PASSING_ZONE];
		[myMediumLeftZone setZone:MIDDLE_LEFT_PASSING_ZONE];
		[self addSubview:myMediumLeftZone];
		[myMediumLeftZone release];
		
		myMediumRightZone = [[ZoneView alloc] initWithFrame:CGRectMake(245, 70, 225, 40)];
		myMediumRightZone.backgroundColor = [UIColor clearColor];
		myMediumRightZone.tag = MIDDLE_RIGHT_PASSING_ZONE;
		[myMediumRightZone setType:PASSING_ZONE];
		[myMediumRightZone setZone:MIDDLE_RIGHT_PASSING_ZONE];
		[self addSubview:myMediumRightZone];
		[myMediumRightZone release];
		
		myLongZone = [[ZoneView alloc] initWithFrame:CGRectMake(10, 25, 460, 40)];
		myLongZone.backgroundColor = [UIColor clearColor];
		myLongZone.tag = DEEP_PASSING_ZONE;
		[myLongZone setType:PASSING_ZONE];
		[myLongZone setZone:DEEP_PASSING_ZONE];
		[self addSubview:myLongZone];
		[myLongZone release];
	}
	
    return self;
}

- (void)playerInZone
{
	[self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{	
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		[subview setNeedsDisplay];
	}
}

- (void)attackZoneTapped:(int)zoneSelector
{
	// [self.nextResponder attackZoneTapped:zoneSelector];
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
		// For this particulr view I am not animating a fade in effect
		// because the same on screen objects are all ready visable during
		// the "pick attack zone" game state.
		
		// CGContextRef context = UIGraphicsGetCurrentContext();
		
		// self.alpha = 0.0;
		
		// [UIView beginAnimations:nil context:context];
		// [UIView setAnimationCurve:UIViewAnimationCurveLinear];
		// [UIView setAnimationDuration:0.5];
		
		self.alpha = 1.0;
		
		// [UIView commitAnimations];
		
		isVisable = TRUE;
	}
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event 
{
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		if (point.x >= subview.frame.origin.x && point.x <= subview.frame.origin.x + [subview frame].size.width)
		{
			if (point.y >= subview.frame.origin.y && point.y <= subview.frame. origin.y + [subview frame].size.height)
			{
				return YES;
			}
		}
	}
	
	return NO;
}

- (void)dealloc
{
    [super dealloc];
}

@end
