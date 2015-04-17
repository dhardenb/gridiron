//
//  GameMenuView.m
//  Gridiron
//
//  Created by David Hardenbrook on 9/19/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GameMenuView.h"


@implementation GameMenuView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myEndGameButton = [[PromptButton alloc] initWithFrame:CGRectMake(20, 50, 200, 25)];
		[myEndGameButton setUserInteractionEnabled:YES];
		myEndGameButton.backgroundColor = [UIColor clearColor];
		[myEndGameButton setType:MAIN_MENU_BUTTON];
		[myEndGameButton setLabel:@"Main Menu"];
		[self addSubview:myEndGameButton];
		[myEndGameButton release];
		
		myResumeGameButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, 275, 200, 25)];
		[myResumeGameButton setUserInteractionEnabled:YES];
		myResumeGameButton.backgroundColor = [UIColor clearColor];
		[myResumeGameButton setType:RESUME_CURRENT_GAME_BUTTON];
		[myResumeGameButton setLabel:@"Resume Current Game"];
		[self addSubview:myResumeGameButton];
		[myResumeGameButton release];
		
		myHelpButton = [[PromptButton alloc] initWithFrame:CGRectMake(20, 85, 200, 25)];
		[myHelpButton setUserInteractionEnabled:YES];
		myHelpButton.backgroundColor = [UIColor clearColor];
		[myHelpButton setType:MAIN_HELP_BUTTON];
		[myHelpButton setLabel:@"Help"];
		[self addSubview:myHelpButton];
		[myHelpButton release];
		
		myAboutButton = [[PromptButton alloc] initWithFrame:CGRectMake(20, 120, 200, 25)];
		[myAboutButton setUserInteractionEnabled:YES];
		myAboutButton.backgroundColor = [UIColor clearColor];
		[myAboutButton setType:ABOUT_BUTTON];
		[myAboutButton setLabel:@"About"];
		[self addSubview:myAboutButton];
		[myAboutButton release];
		
		myFieldGoalButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, 50, 200, 25)];
		[myFieldGoalButton setUserInteractionEnabled:YES];
		myFieldGoalButton.backgroundColor = [UIColor clearColor];
		[myFieldGoalButton setType:FIELD_GOAL_MENU_BUTTON];
		[myFieldGoalButton setLabel:@"Field Goal"];
		[self addSubview:myFieldGoalButton];
		[myFieldGoalButton release];
		
		myPuntButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, 85, 200, 25)];
		[myPuntButton setUserInteractionEnabled:YES];
		myPuntButton.backgroundColor = [UIColor clearColor];
		[myPuntButton setType:PUNT_MENU_BUTTON];
		[myPuntButton setLabel:@"Punt"];
		[self addSubview:myPuntButton];
		[myPuntButton release];
		
		myTimeOutButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, 120, 200, 25)];
		[myTimeOutButton setUserInteractionEnabled:YES];
		myTimeOutButton.backgroundColor = [UIColor clearColor];
		[myTimeOutButton setType:TIME_OUT_BUTTON];
		[myTimeOutButton setLabel:@"Timeout"];
		[self addSubview:myTimeOutButton];
		[myTimeOutButton release];
	}
	
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
    CGContextSetRGBStrokeColor(context,  0.0, 0.0, 0.0, 1.0);
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.9);
	
	CGRect rrect = CGRectMake(10, 40, 460, 270);
	CGFloat radius = 10.0;
	
	CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
	CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect);
	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	
	CGContextClosePath(context);
	CGContextDrawPath(context, kCGPathFillStroke);
	
	[self updateFieldGoalButton];
	[self updatePuntButton];
	[self updateTimeoutButton];
	
}

- (void)updateFieldGoalButton
{
	// Update the Field Goal Button
	int los = [GameManager getLineOfScrimmage];
	int chanceToMakeFieldGoal = 100 - los - los * .75;
	if (chanceToMakeFieldGoal < 0)
	{
		chanceToMakeFieldGoal = 0;
	}
	
	NSString *fieldGoalButtonText = @"Field Goal";
	
	[myFieldGoalButton setLabel:fieldGoalButtonText];
	
	// If there is no chance for the field goal to make it OR if the offense is controlled
	// by the computer, then disable the button
	if ((chanceToMakeFieldGoal < 1) || ([GameManager isOffenseHuman] == NO) || ([GameManager getAttemptingTwoPoints] == 1))
	{
		myFieldGoalButton.userInteractionEnabled = NO;
	}
	else
	{
		myFieldGoalButton.userInteractionEnabled = YES;
	}
	
	[myFieldGoalButton setNeedsDisplay];
}

- (void)updatePuntButton
{
	if ([GameManager isOffenseHuman] && [GameManager getAttemptingTwoPoints] == 0)
	{
		myPuntButton.userInteractionEnabled = YES;
	}
	else
	{
		myPuntButton.userInteractionEnabled = NO;
	}
	
	[myPuntButton setNeedsDisplay];
}

- (void)updateTimeoutButton
{
	if ([GameManager getPreviousGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER || [GameManager getPreviousGameState] == WAITING_TO_PICK_ATTACK_ZONE)
	{
		if ([GameManager getPossession] == HOME_TEAM)
		{
			if ([GameManager getHomeTeamTimeOuts] > 0)
			{
				myTimeOutButton.userInteractionEnabled = YES;
			}
			else
			{
				myTimeOutButton.userInteractionEnabled = NO;
			}
		}
		else
		{
			if ([GameManager getAwayTeamTimeOuts] > 0)
			{
				myTimeOutButton.userInteractionEnabled = YES;
			}
			else
			{
				myTimeOutButton.userInteractionEnabled = NO;
			}
		}
	}
	else if ([GameManager getPreviousGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		if ([GameManager getPossession] == AWAY_TEAM)
		{
			if ([GameManager getHomeTeamTimeOuts] > 0)
			{
				myTimeOutButton.userInteractionEnabled = YES;
			}
			else
			{
				myTimeOutButton.userInteractionEnabled = NO;
			}
		}
		else
		{
			if ([GameManager getAwayTeamTimeOuts] > 0)
			{
				myTimeOutButton.userInteractionEnabled = YES;
			}
			else
			{
				myTimeOutButton.userInteractionEnabled = NO;
			}
		}
	}
	
	[myTimeOutButton setNeedsDisplay];
}

- (void)askQuestion:(int)promptButton
{
	if (promptButton == TIME_OUT_BUTTON)
	{
		// Make sure we charge the timeout to the correct team!
		if ([GameManager getPreviousGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER || [GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ([GameManager getPossession] == HOME_TEAM)
			{
				[GameManager useHomeTeamTimeOut];
				[GameManager setNavFlag:HOME_TEAM_TIME_OUT_NAV_FLAG];
			}
			else
			{
				[GameManager useAwayTeamTimeOut];
				[GameManager setNavFlag:AWAY_TEAM_TIME_OUT_NAV_FLAG];
			}
		}
		else if ([GameManager getPreviousGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getPossession] == AWAY_TEAM)
			{
				[GameManager useHomeTeamTimeOut];
				[GameManager setNavFlag:HOME_TEAM_TIME_OUT_NAV_FLAG];
			}
			else
			{
				[GameManager useAwayTeamTimeOut];
				[GameManager setNavFlag:AWAY_TEAM_TIME_OUT_NAV_FLAG];
			}
		}
	}
	
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
