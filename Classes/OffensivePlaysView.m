//
//  OffensivePlaysView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "OffensivePlaysView.h"

@implementation OffensivePlaysView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
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

- (void)drawRect:(CGRect)rect
{
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		[subview setNeedsDisplay];
	}
}
		
- (void)animateZoneSelectors
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGRect frame;
	
	// Rushing Zone Selectors
	
	mySweepLeftSelector.alpha = 1.0;
	frame = [mySweepLeftSelector frame];
	frame.origin.x = 50.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[mySweepLeftSelector setFrame:frame];
	
	myOffTackleLeftSelector.alpha = 1.0;
	frame = [myOffTackleLeftSelector frame];
	frame.origin.x = 125.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffTackleLeftSelector setFrame:frame];
	
	myOffGuardLeftSelector.alpha = 1.0;
	frame = [myOffGuardLeftSelector frame];
	frame.origin.x = 165.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffGuardLeftSelector setFrame:frame];
	
	myOffCenterLeftSelector.alpha = 1.0;
	frame = [myOffCenterLeftSelector frame];
	frame.origin.x = 205.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffCenterLeftSelector setFrame:frame];
	
	myOffCenterRightSelector.alpha = 1.0;
	frame = [myOffCenterRightSelector frame];
	frame.origin.x = 245.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffCenterRightSelector setFrame:frame];
	
	myOffGuardRightSelector.alpha = 1.0;
	frame = [myOffGuardRightSelector frame];
	frame.origin.x = 285.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffGuardRightSelector setFrame:frame];
	
	myOffTackleRightSelector.alpha = 1.0;
	frame = [myOffTackleRightSelector frame];
	frame.origin.x = 325.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myOffTackleRightSelector setFrame:frame];
	
	mySweepRightSelector.alpha = 1.0;
	frame = [mySweepRightSelector frame];
	frame.origin.x = 400.0;
	frame.origin.y = 145.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[mySweepRightSelector setFrame:frame];
	
	// Passing Zone Selectors
	
	myLongZoneSelector.alpha = 1.0;
	frame = [myLongZoneSelector frame];
	frame.origin.x = 225.0;
	frame.origin.y = 17.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myLongZoneSelector setFrame:frame];
	
	myMediumLeftZoneSelector.alpha = 1.0;
	frame = [myMediumLeftZoneSelector frame];
	frame.origin.x = 135.0;
	frame.origin.y = 60.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myMediumLeftZoneSelector setFrame:frame];
	
	myMediumRightZoneSelector.alpha = 1.0;
	frame = [myMediumRightZoneSelector frame];
	frame.origin.x = 315.0;
	frame.origin.y = 60.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myMediumRightZoneSelector setFrame:frame];
	
	myShortLeftZoneSelector.alpha = 1.0;
	frame = [myShortLeftZoneSelector frame];
	frame.origin.x = 80.0;
	frame.origin.y = 103.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myShortLeftZoneSelector setFrame:frame];
	
	myShortRightZoneSelector.alpha = 1.0;
	frame = [myShortRightZoneSelector frame];
	frame.origin.x = 370.0;
	frame.origin.y = 103.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myShortRightZoneSelector setFrame:frame];
	
	myShortMiddleZoneSelector.alpha = 1.0;
	frame = [myShortMiddleZoneSelector frame];
	frame.origin.x = 225.0;
	frame.origin.y = 103.0;
	frame.size.width = 30;
	frame.size.height = 30;
	[myShortMiddleZoneSelector setFrame:frame];
	
	[UIView beginAnimations:nil context:context];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationRepeatAutoreverses:NO];
	[UIView setAnimationRepeatCount:1e100f];
	[UIView setAnimationDuration:1.5];
	
	// Rushing Zone Selectors
	
	mySweepLeftSelector.alpha = 0.0;
	frame = [mySweepLeftSelector frame];
	frame.origin.x = 40.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[mySweepLeftSelector setFrame:frame];
	
	myOffTackleLeftSelector.alpha = 0.0;
	frame = [myOffTackleLeftSelector frame];
	frame.origin.x = 115.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffTackleLeftSelector setFrame:frame];
	
	myOffGuardLeftSelector.alpha = 0.0;
	frame = [myOffGuardLeftSelector frame];
	frame.origin.x = 155.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffGuardLeftSelector setFrame:frame];
	
	myOffCenterLeftSelector.alpha = 0.0;
	frame = [myOffCenterLeftSelector frame];
	frame.origin.x = 195.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffCenterLeftSelector setFrame:frame];
	
	myOffCenterRightSelector.alpha = 0.0;
	frame = [myOffCenterRightSelector frame];
	frame.origin.x = 235.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffCenterRightSelector setFrame:frame];
	
	myOffGuardRightSelector.alpha = 0.0;
	frame = [myOffGuardRightSelector frame];
	frame.origin.x = 275.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffGuardRightSelector setFrame:frame];
	
	myOffTackleRightSelector.alpha = 0.0;
	frame = [myOffTackleRightSelector frame];
	frame.origin.x = 315.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myOffTackleRightSelector setFrame:frame];
	
	mySweepRightSelector.alpha = 0.0;
	frame = [mySweepRightSelector frame];
	frame.origin.x = 390.0;
	frame.origin.y = 135.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[mySweepRightSelector setFrame:frame];
	
	// Passing Zone Selectors
	
	myLongZoneSelector.alpha = 0.0;
	frame = [myLongZoneSelector frame];
	frame.origin.x = 215.0;
	frame.origin.y = 7.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myLongZoneSelector setFrame:frame];
	
	myMediumLeftZoneSelector.alpha = 0.0;
	frame = [myMediumLeftZoneSelector frame];
	frame.origin.x = 125.0;
	frame.origin.y = 50.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myMediumLeftZoneSelector setFrame:frame];
	
	myMediumRightZoneSelector.alpha = 0.0;
	frame = [myMediumRightZoneSelector frame];
	frame.origin.x = 305.0;
	frame.origin.y = 50.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myMediumRightZoneSelector setFrame:frame];
	
	myShortLeftZoneSelector.alpha = 0.0;
	frame = [myShortLeftZoneSelector frame];
	frame.origin.x = 70.0;
	frame.origin.y = 93.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myShortLeftZoneSelector setFrame:frame];
	
	myShortRightZoneSelector.alpha = 0.0;
	frame = [myShortRightZoneSelector frame];
	frame.origin.x = 360.0;
	frame.origin.y = 93.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myShortRightZoneSelector setFrame:frame];
	
	myShortMiddleZoneSelector.alpha = 0.0;
	frame = [myShortMiddleZoneSelector frame];
	frame.origin.x = 215.0;
	frame.origin.y = 93.0;
	frame.size.width = 50;
	frame.size.height = 50;
	[myShortMiddleZoneSelector setFrame:frame];
	
	[UIView commitAnimations];
}

- (void)attackZoneTapped:(int)zoneSelector
{
	[self.nextResponder attackZoneTapped:zoneSelector];
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

- (BOOL) pointInside:(CGPoint)point withEvent:(UIEvent *)event 
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
