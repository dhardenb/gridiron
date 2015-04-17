//
//  ControlPanel.m
//  Gridiron
//
//  Created by David Hardenbrook on 6/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ControlPanelView.h"

@implementation ControlPanelView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
        myMenuButton = [[PromptButton alloc] initWithFrame:CGRectMake(10, 285, 80, 25)];
		[myMenuButton setUserInteractionEnabled:YES];
		myMenuButton.backgroundColor = [UIColor clearColor];
		[myMenuButton setType:GAME_MENU_BUTTON];
		[myMenuButton setLabel:@"Menu"];
		[self addSubview:myMenuButton];
		[myMenuButton release];
		
		myNextButton = [[PromptButton alloc] initWithFrame:CGRectMake(390, 285, 80, 25)];
		[myNextButton setUserInteractionEnabled:YES];
		myNextButton.backgroundColor = [UIColor clearColor];
		[myNextButton setLabel:@">"];
		[self addSubview:myNextButton];
		[myNextButton release];
		
		myHikeButton = [[PromptButton alloc] initWithFrame:CGRectMake(390, 285, 80, 25)];
		[myHikeButton setUserInteractionEnabled:YES];
		myHikeButton.backgroundColor = [UIColor clearColor];
		[myHikeButton setType:HIKE_BUTTON];
		[myHikeButton setLabel:@">"];
		[self addSubview:myHikeButton];
		[myHikeButton release];
		
		myFormationButton = [[PromptButton alloc] initWithFrame:CGRectMake(10, 285, 160, 25)];
		[myFormationButton setUserInteractionEnabled:YES];
		myFormationButton.backgroundColor = [UIColor clearColor];
		[myFormationButton setType:FORMATION_BUTTON];
		[myFormationButton setLabel:@"Formation"];
		[self addSubview:myFormationButton];
		[myFormationButton release];
	}
	
    return self;
}

- (void)drawRect:(CGRect)rect
{		
	if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER) {
		myMenuButton.hidden = FALSE;
		myNextButton.hidden = TRUE;
		myHikeButton.hidden = TRUE;
		myFormationButton.hidden = TRUE;
	}
	else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE) {
		myMenuButton.hidden = FALSE;
		myHikeButton.hidden = TRUE;
		myFormationButton.hidden = TRUE;

		if ([GameManager getAttackZoneSelected] == NO_POSITION_SELECTED) {
			myNextButton.hidden = TRUE;
		}
		else {
			myNextButton.hidden = FALSE;
			[myNextButton setType:OFFENSE_READY_BUTTON];
		}
	}
	else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE) {
		myMenuButton.hidden = FALSE;
		myNextButton.hidden = FALSE;
		[myNextButton setType:DEFENSE_READY_BUTTON];
		myHikeButton.hidden = TRUE;
		myFormationButton.hidden = TRUE;
		
		if ([GameManager getDefensiveFormation] == CUSTOM_DEFENSIVE_FORMATION) {
			[myFormationButton setLabel:@"Formation: Custom"];
		}
		else if ([GameManager getDefensiveFormation] == FIVE_THREE_THREE_DEFENSIVE_FORMATION) {
			[myFormationButton setLabel:@"Formation: 5-3-3"];
		}
		else if ([GameManager getDefensiveFormation] == FOUR_THREE_FOUR_DEFENSIVE_FORMATION) {
			[myFormationButton setLabel:@"Formation: 4-3-4"];
		}
		else if ([GameManager getDefensiveFormation] == THREE_FOUR_FOUR_DEFENSIVE_FORMATION) {
			[myFormationButton setLabel:@"Formation: 3-4-4"];
		}
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL) {
		myMenuButton.hidden = TRUE;
		myNextButton.hidden = TRUE;
		myHikeButton.hidden = FALSE;
		myFormationButton.hidden = TRUE;

		[myHikeButton setNeedsDisplay];
	}
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
