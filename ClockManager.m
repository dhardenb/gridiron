//
//  ClockManager.m
//  Gridiron
//
//  Created by David Hardenbrook on 12/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ClockManager.h"

static int myLastPlayDuration = 0;

@implementation ClockManager

+ (int)getLastPlayDuration
{
	return myLastPlayDuration;
}

+ (void)reset
{
	if ([GameManager getQuarterLength] == QUARTER_LENGTH_2_HALF_MINUTES)
	{
		[GameManager setClock:150];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_5_MINUTES)
	{
		[GameManager setClock:300];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_10_MINUTES)
	{
		[GameManager setClock:600];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_15_MINUTES)
	{
		[GameManager setClock:900];
	}
}

+ (void)runPlayTimeOffClock
{
	int rollForTime = [RollManager rollTwoThreeSidedDice];
	
	int ClockAtStartOfPlay = [GameManager getClock];
	
	int attackZoneSelected = [GameManager getAttackZoneSelected];
	
	if (attackZoneSelected == LEFT_INSIDE_RUSHING_LANE ||
		attackZoneSelected == LEFT_OFFTACKLE_RUSHING_LANE ||
		attackZoneSelected == RIGHT_OFFTACKLE_RUSHING_LANE ||
		attackZoneSelected == SHORT_LEFT_PASSING_ZONE ||
		attackZoneSelected == SHORT_RIGHT_PASSING_ZONE ||
		attackZoneSelected == NORMAL_FIELD_GOAL)
	{
		if (rollForTime == 2)
		{
			myLastPlayDuration = 3;
		}
		else if (rollForTime == 3)
		{
			myLastPlayDuration = 4;
		}
		else if (rollForTime == 4)
		{
			myLastPlayDuration = 5;
		}
		else if (rollForTime == 5)
		{
			myLastPlayDuration = 6;
		}
		else if (rollForTime == 6)
		{
			myLastPlayDuration = 7;
		}
	}
	else if (attackZoneSelected == LEFT_SWEEP_RUSHING_LANE ||
			 attackZoneSelected == RIGHT_SWEEP_RUSHING_LANE ||
			 attackZoneSelected == SHORT_MIDDLE_PASSING_ZONE)
	{
		if (rollForTime == 2)
		{
			myLastPlayDuration = 5;
		}
		else if (rollForTime == 3)
		{
			myLastPlayDuration = 6;
		}
		else if (rollForTime == 4)
		{
			myLastPlayDuration = 7;
		}
		else if (rollForTime == 5)
		{
			myLastPlayDuration = 8;
		}
		else if (rollForTime == 6)
		{
			myLastPlayDuration = 9;
		}
	}
	else if (attackZoneSelected == EXTRA_POINT ||
			 [GameManager getAttemptingTwoPoints] == 1)
	{
		myLastPlayDuration = 0;
	}
	else
	{
		if (rollForTime == 2)
		{
			myLastPlayDuration = 7;
		}
		else if (rollForTime == 3)
		{
			myLastPlayDuration = 8;
		}
		else if (rollForTime == 4)
		{
			myLastPlayDuration = 9;
		}
		else if (rollForTime == 5)
		{
			myLastPlayDuration = 10;
		}
		else if (rollForTime == 6)
		{
			myLastPlayDuration = 11;
		}
	}
	
	if (ClockAtStartOfPlay - myLastPlayDuration < 0)
	{
		myLastPlayDuration = ClockAtStartOfPlay;
	}
	
	if ([GameManager getNavFlag] != EXTRA_POINT_NAV_FLAG && [ClockManager IsTwoMinuteWarning])
	{
		[ClockManager RunTwoMinuteWarningDuringPlay];
	}
	// Don't run end of quarter if we need an extra point
	else if ([GameManager getNavFlag] != EXTRA_POINT_NAV_FLAG && [ClockManager IsEndOfQuarter])
	{
		[ClockManager RunEndOfQuarter];
	}
	else
	{
		[ClockManager RunElapsedTime];
	}
}

+ (void)runHuddleTimeOffClock
{
	if ([GameManager getGameClockStatus] == GAME_CLOCK_RUNNING)
	{
		int rollForTime = [RollManager rollTwoThreeSidedDice];
		
		int ClockAtStartOfPlay = [GameManager getClock];
		
		// Check for hurry up mode
		if (([GameManager getClock] <= 120) &&
			([GameManager getQuarter] == 2 ||
			 [GameManager getQuarter] == 4 ||
			 [GameManager getQuarter] == 5))
		{
			if (rollForTime == 2)
			{
				myLastPlayDuration = 6;
			}
			else if (rollForTime == 3)
			{
				myLastPlayDuration = 9;
			}
			else if (rollForTime == 4)
			{
				myLastPlayDuration = 12;
			}
			else if (rollForTime == 5)
			{
				myLastPlayDuration = 15;
			}
			else if (rollForTime == 6)
			{
				myLastPlayDuration = 18;
			}
		}
		else // not in hurry up mode
		{
			if (rollForTime == 2)
			{
				myLastPlayDuration = 15;
			}
			else if (rollForTime == 3)
			{
				myLastPlayDuration = 20;
			}
			else if (rollForTime == 4)
			{
				myLastPlayDuration = 25;
			}
			else if (rollForTime == 5)
			{
				myLastPlayDuration = 30;
			}
			else if (rollForTime == 6)
			{
				myLastPlayDuration = 35;
			}
		}
		
		if (ClockAtStartOfPlay - myLastPlayDuration < 0)
		{
			myLastPlayDuration = ClockAtStartOfPlay;
		}
		
		if ([GameManager getNavFlag] != EXTRA_POINT_NAV_FLAG && [ClockManager IsTwoMinuteWarning])
		{
			// [ClockManager RunTwoMinuteWarningDuringHuddle];
            
            // In real life, if the game clock hits two minutes during the huddle, the clock is
            // stopped immediatly. But in the game this is really anoying because you don't
            // find out until after you have selected your play. So, I have changed the code to
            // just assume the offense has snapped the ball with one second left before the two
            // minute warning would have kicked in. 
            myLastPlayDuration = ClockAtStartOfPlay - SECONDS_IN_TWO_MINUTE_WARNING - 1;
            [ClockManager RunElapsedTime];
		}
		// Check to make sure we do not need to run an extra point play!
		else if ([GameManager getNavFlag] != EXTRA_POINT_NAV_FLAG && [ClockManager IsEndOfQuarter])
		{
			// [ClockManager RunEndOfQuarter];
            
            // See notes above
            myLastPlayDuration = ClockAtStartOfPlay - 1;
            [ClockManager RunElapsedTime];
		}
		else
		{
			[ClockManager RunElapsedTime];
		}
	}
}

+ (void)RunElapsedTime
{
	int ClockAtStartOfPlay = [GameManager getClock];
	int ClockAtEndOfPlay =  ClockAtStartOfPlay - myLastPlayDuration;
	
	if (ClockAtEndOfPlay < 0)
	{
		ClockAtEndOfPlay = 0;
	}
	
	[GameManager setClock:ClockAtEndOfPlay];
}

+ (void)RunEndOfQuarter
{
	myLastPlayDuration = [GameManager getClock];
	[ClockManager reset];
	[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
	
	// Adjust the Nav Flag
	if ([GameManager getQuarter] == 1)
	{
        if ([GameManager getNavFlag] == NEED_KICKOFF_NAV_FLAG)
        {
            [GameManager setNavFlag:END_OF_FIRST_QUARTER_NEED_KICK_OFF_NAV_FLAG];
        }
        else
        {
            [GameManager setNavFlag:END_OF_FIRST_QUARTER_NAV_FLAG];
        }
		[GameManager setQuarter:2];
	}
	else if ([GameManager getQuarter] == 2)
	{
		[GameManager setNavFlag:END_OF_SECOND_QUARTER_NAV_FLAG];
		[GameManager setQuarter:3];
	}
	else if ([GameManager getQuarter] == 3)
	{
		if ([GameManager getNavFlag] == NEED_KICKOFF_NAV_FLAG)
        {
            [GameManager setNavFlag:END_OF_THIRD_QUARTER_NEED_KICK_OFF_NAV_FLAG];
        }
        else
        {
            [GameManager setNavFlag:END_OF_THIRD_QUARTER_NAV_FLAG];
        }
		[GameManager setQuarter:4];
	}
	else if ([GameManager getQuarter] == 4)
	{
		[GameManager setNavFlag:END_OF_FOURTH_QUARTER_NAV_FLAG];
		[GameManager setQuarter:5];
	}
	else if ([GameManager getQuarter] == 5)
	{
		[GameManager setNavFlag:END_OF_OVERTIME_NAV_FLAG];
	}
}

+ (void)RunTwoMinuteWarningDuringPlay
{
	[GameManager setNavFlag:TWO_MINUTE_WARNING_NAV_FLAG];
	[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
	[ClockManager RunElapsedTime];
}

+ (void)RunTwoMinuteWarningDuringHuddle
{
	[GameManager setClock:SECONDS_IN_TWO_MINUTE_WARNING];
	int ClockAtStartOfPlay = [GameManager getClock];
	myLastPlayDuration =  ClockAtStartOfPlay - SECONDS_IN_TWO_MINUTE_WARNING;
	[GameManager setNavFlag:TWO_MINUTE_WARNING_NAV_FLAG];
	[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
}

+ (BOOL)IsTwoMinuteWarning
{
	int ClockAtStartOfPlay = [GameManager getClock];
	int ClockAtEndOfPlay = ClockAtStartOfPlay - myLastPlayDuration;
	
	if (((ClockAtStartOfPlay > 120) && (ClockAtEndOfPlay <= 120)) && (([GameManager getQuarter] == 2) || ([GameManager getQuarter] == 4) || ([GameManager getQuarter] == 5)))
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

+ (BOOL)IsEndOfQuarter
{
	int ClockAtStartOfPlay = [GameManager getClock];
	int ClockAtEndOfPlay = ClockAtStartOfPlay - myLastPlayDuration;
	
	if (ClockAtEndOfPlay < 1)
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}

@end
