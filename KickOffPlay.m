
#import "KickOffPlay.h"

@implementation KickOffPlay

+ (void)run
{
	int kickoffRoll = [RollManager rollTwoSixSidedDice];
	int touchbackRoll = [RollManager rollOneHundredSidedDice];
	int returnRoll = [RollManager rollTwoSixSidedDice];
	int onsideKickRoll = [RollManager rollOneHundredSidedDice];
	int rollForFumble = [RollManager rollOneHundredSidedDice];
	int rollForFumbleRecovery = [RollManager rollOneHundredSidedDice];
	
	[GameManager setNavFlag:0];
	
	// As soon as the ball is kicked, the receiving team becomes the offense.
	[GameManager changePossession];
	
	// Determine Kick Off Results
	if ([GameManager getAttackZoneSelected] == NORMAL_KICK_OFF)
	{
		// Determine Kick Off Distance
		if (kickoffRoll == 2)
		{
			[GameManager setLineOfScrimmage:85];
			[GameManager buildCommentary:@"The kick is fielded at the 15 yard line.\n"];
		}
		else if (kickoffRoll == 3)
		{
			[GameManager setLineOfScrimmage:88];
			[GameManager buildCommentary:@"The kick is fielded at the 12 yard line.\n"];
		}
		else if (kickoffRoll == 4)
		{
			[GameManager setLineOfScrimmage:91];
			[GameManager buildCommentary:@"The kick is fielded at the 9 yard line.\n"];
		}
		else if (kickoffRoll == 5)
		{
			[GameManager setLineOfScrimmage:94];
			[GameManager buildCommentary:@"The kick is fielded at the 6 yard line.\n"];
		}
		else if (kickoffRoll == 6)
		{
			[GameManager setLineOfScrimmage:97];
			[GameManager buildCommentary:@"The kick is fielded at the 3 yard line.\n"];
		}
		else if (kickoffRoll == 7)
		{
			[GameManager setLineOfScrimmage:100];
			[GameManager buildCommentary:@"The kick is fielded at the goal line.\n"];
		}
		else if (kickoffRoll == 8)
		{
			[GameManager setLineOfScrimmage:103];
			[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
			[GameManager buildCommentary:@"The kick is fielded 3 yards deep in the end zone.\n"];
		}
		else if (kickoffRoll == 9)
		{
			[GameManager setLineOfScrimmage:106];
			[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
			[GameManager buildCommentary:@"The kick is fielded six yards deep in the end zone.\n"];
		}
		else if (kickoffRoll == 10)
		{
			[GameManager setLineOfScrimmage:109];
			[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
			[GameManager buildCommentary:@"The kick is fielded nine yards deep in the end zone.\n"];
		}
		else if (kickoffRoll == 11)
		{
			[GameManager setLineOfScrimmage:112];
			[GameManager buildCommentary:@"The kick travels out of the back of the end zone.\n"];
		}
		else // 12
		{
			[GameManager setLineOfScrimmage:115];
			[GameManager buildCommentary:@"The kick travels out of the back of the end zone.\n"];
		}
		
		// Check for touchback
		bool isTouchBack = FALSE;
		
		if ([GameManager getLineOfScrimmage] > 110)
		{
			isTouchBack = TRUE;
		}
		else if ([GameManager getLineOfScrimmage] == 109)
		{
			if (touchbackRoll <= 80)
			{
				isTouchBack = TRUE;
			}
		}
		else if ([GameManager getLineOfScrimmage] == 106)
		{
			if (touchbackRoll <= 60)
			{
				isTouchBack = TRUE;
			}
		}
		else if ([GameManager getLineOfScrimmage] == 103)
		{
			if (touchbackRoll <= 40)
			{
				isTouchBack = TRUE;
			}
		}
		else if ([GameManager getLineOfScrimmage] == 100)
		{
			if (touchbackRoll <= 20)
			{
				isTouchBack = TRUE;
			}
		}
		
		if (isTouchBack)
		{
			[GameManager setLineOfScrimmage:80];
			[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			[GameManager setDown:1];
			[GameManager setYardsToGo:10];
			
			[GameManager buildCommentary:@"Touchback.\nThe ball is placed at the 20 yard line.\nFirst Down!\n"];
			
			return;
		}
		
		// Determine Return Yards
		if ([GameManager getDefensiveStanceSelected] == NORMAL_KICK_OFF_RETURN)
		{
			if (returnRoll == 2)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 10];
				[GameManager buildCommentary:@"The kick is returned 10 yards.\n"];
			}
			else if (returnRoll == 3)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 12];
				[GameManager buildCommentary:@"The kick is returned 12 yards.\n"];
			}
			else if (returnRoll == 4)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 14];
				[GameManager buildCommentary:@"The kick is returned 14 yards.\n"];
			}
			else if (returnRoll == 5)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 16];
				[GameManager buildCommentary:@"The kick is returned 16 yards.\n"];
			}
			else if (returnRoll == 6)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 18];
				[GameManager buildCommentary:@"The kick is returned 18 yards.\n"];
			}
			else if (returnRoll == 7)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 20];
				[GameManager buildCommentary:@"The kick is returned 20 yards.\n"];
			}
			else if (returnRoll == 8)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 22];
				[GameManager buildCommentary:@"The kick is returned 22 yards.\n"];
			}
			else if (returnRoll == 9)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 26];
				[GameManager buildCommentary:@"The kick is returned 26 yards.\n"];
			}
			else if (returnRoll == 10)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 34];
				[GameManager buildCommentary:@"The returner bursts from the pack and is finally taken down after a gain of 34 yards.\n"];
			}
			else if (returnRoll == 11)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 50];
				[GameManager buildCommentary:@"The returner bursts from the pack. One man to beat. Oh, he's tripped from behind after a gain of 50 yards!\n"];
			}
			else // 12
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 109];
				[GameManager buildCommentary:@"The returner streaks down the sideline, one man to beat, he hurdles the kicker! He's at the 35, the 20, \n"];
			}
		}
		else // Reverse Return
		{
			if (returnRoll == 2)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] + 10];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man is chased down for a loss of 10 yards!\n"];
			}
			else if (returnRoll == 3)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] + 6];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man is chased down for a loss of 6 yards! "];
			}
			else if (returnRoll == 4)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] + 2];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man is chased down for a loss of 2 yards! "];
			}
			else if (returnRoll == 5)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 2];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 2 yards! "];
			}
			else if (returnRoll == 6)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 6];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 6 yards! "];
			}
			else if (returnRoll == 7)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 10];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 10 yards! "];
			}
			else if (returnRoll == 8)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 15];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 15 yards! "];
			}
			else if (returnRoll == 9)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 25];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 25 yards! "];
			}
			else if (returnRoll == 10)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 45];
				[GameManager buildCommentary:@"The returner pitches the ball, it's a reverse! The reverse man gains 45 yards! "];
			}
			else if (returnRoll == 11 || returnRoll == 12)
			{
				[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 100];
				[GameManager buildCommentary:@"The returner bursts from the pack. One man to beat. "];
			}
		}
	}
	else if ([GameManager getAttackZoneSelected] == SQUIB_KICK_OFF)
	{
		[GameManager buildCommentary:@"The kicker bounces the ball down the field. "];
		
		// Determine Kick Off Distance
		if (kickoffRoll == 2)
		{
			[GameManager setLineOfScrimmage:50];
			[GameManager buildCommentary:@"The kick is fielded at the 50 yard line. "];
		}
		else if (kickoffRoll == 3)
		{
			[GameManager setLineOfScrimmage:53];
			[GameManager buildCommentary:@"The kick is fielded at the 47 yard line. "];
		}
		else if (kickoffRoll == 4)
		{
			[GameManager setLineOfScrimmage:56];
			[GameManager buildCommentary:@"The kick is fielded at the 44 yard line. "];
		}
		else if (kickoffRoll == 5)
		{
			[GameManager setLineOfScrimmage:59];
			[GameManager buildCommentary:@"The kick is fielded at the 41 yard line. "];
		}
		else if (kickoffRoll == 6)
		{
			[GameManager setLineOfScrimmage:62];
			[GameManager buildCommentary:@"The kick is fielded at the 38 yard line. "];
		}
		else if (kickoffRoll == 7)
		{
			[GameManager setLineOfScrimmage:65];
			[GameManager buildCommentary:@"The kick is fielded at the 35 yard line. "];
		}
		else if (kickoffRoll == 8)
		{
			[GameManager setLineOfScrimmage:68];
			[GameManager buildCommentary:@"The kick is fielded at the 32 yard line. "];
		}
		else if (kickoffRoll == 9)
		{
			[GameManager setLineOfScrimmage:71];
			[GameManager buildCommentary:@"The kick is fielded at the 29 yard line. "];
		}
		else if (kickoffRoll == 10)
		{
			[GameManager setLineOfScrimmage:74];
			[GameManager buildCommentary:@"The kick is fielded at the 26 yard line. "];
		}
		else if (kickoffRoll == 11)
		{
			[GameManager setLineOfScrimmage:77];
			[GameManager buildCommentary:@"The kick is fielded at the 23 yard line. "];
		}
		else // 12
		{
			[GameManager setLineOfScrimmage:80];
			[GameManager buildCommentary:@"The kick is fielded at the 20 yard line. "];
		}
		
		// Determine the return yards
		if (returnRoll == 2)
		{
			[GameManager buildCommentary:@"The kick is returned 0 yards. "];
		}
		else if (returnRoll == 3)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 1];
			[GameManager buildCommentary:@"The kick is returned 1 yards. "];
		}
		else if (returnRoll == 4)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 2];
			[GameManager buildCommentary:@"The kick is returned 2 yards. "];
		}
		else if (returnRoll == 5)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 3];
			[GameManager buildCommentary:@"The kick is returned 3 yards. "];
		}
		else if (returnRoll == 6)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 4];
			[GameManager buildCommentary:@"The kick is returned 4 yards. "];
		}
		else if (returnRoll == 7)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 5];
			[GameManager buildCommentary:@"The kick is returned 5 yards. "];
		}
		else if (returnRoll == 8)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 7];
			[GameManager buildCommentary:@"The kick is returned 7 yards. "];
		}
		else if (returnRoll == 9)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 9];
			[GameManager buildCommentary:@"The kick is returned 9 yards. "];
		}
		else if (returnRoll == 10)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 11];
			[GameManager buildCommentary:@"The kick is returned 11 yards. "];
		}
		else if (returnRoll == 11)
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 13];
			[GameManager buildCommentary:@"The kick is returned 13 yards. "];
		}
		else // 12
		{
			[GameManager setLineOfScrimmage:[GameManager getLineOfScrimmage] - 15];
			[GameManager buildCommentary:@"The kick is returned 15 yards. "];
		}
	}
	else if ([GameManager getAttackZoneSelected] == ONSIDE_KICK_OFF)
	{
		[GameManager buildCommentary:@"The kicking team lines up for an onside kick. The kicker shanks it to the sideline. "];
		
		// Determine Kick Off Distance
		if (kickoffRoll == 2)
		{
			[GameManager setLineOfScrimmage:45];
			[GameManager buildCommentary:@"The teams collide at the kicking teams 45 yard line. "];
		}
		else if (kickoffRoll == 3)
		{
			[GameManager setLineOfScrimmage:46];
			[GameManager buildCommentary:@"The teams collide at the kicking teams 46 yard line. "];
		}
		else if (kickoffRoll == 4)
		{
			[GameManager setLineOfScrimmage:47];
			[GameManager buildCommentary:@"The teams collide at the kicking teams 47 yard line. "];
		}
		else if (kickoffRoll == 5)
		{
			[GameManager setLineOfScrimmage:48];
			[GameManager buildCommentary:@"The teams collide at the kicking teams 48 yard line. "];
		}
		else if (kickoffRoll == 6)
		{
			[GameManager setLineOfScrimmage:49];
			[GameManager buildCommentary:@"The teams collide at the kicking teams 49 yard line. "];
		}
		else if (kickoffRoll == 7)
		{
			[GameManager setLineOfScrimmage:50];
			[GameManager buildCommentary:@"The teams collide at the 50 yard line. "];
		}
		else if (kickoffRoll == 8)
		{
			[GameManager setLineOfScrimmage:52];
			[GameManager buildCommentary:@"The teams collide at the receiving teams 48 yard line. "];
		}
		else if (kickoffRoll == 9)
		{
			[GameManager setLineOfScrimmage:54];
			[GameManager buildCommentary:@"The teams collide at the receiving teams 46 yard line. "];
		}
		else if (kickoffRoll == 10)
		{
			[GameManager setLineOfScrimmage:56];
			[GameManager buildCommentary:@"The teams collide at the receiving teams 44 yard line. "];
		}
		else if (kickoffRoll == 11)
		{
			[GameManager setLineOfScrimmage:58];
			[GameManager buildCommentary:@"The teams collide at the receiving teams 42 yard line. "];
		}
		else // 12
		{
			[GameManager setLineOfScrimmage:60];
			[GameManager buildCommentary:@"The teams collide at the receiving teams 40 yard line. "];
		}
		
		// check for possession
		if (onsideKickRoll <= 20)
		{
			[GameManager buildCommentary:@"The kicking team recovers the ball! First down! "];
			[GameManager changePossession];
		}
		else
		{
			[GameManager buildCommentary:@"The receiving team recovers the ball! First down! "];
		}
		
		[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
		[ClockManager runPlayTimeOffClock];
		
		[GameManager setDown:1];
		
		// At this point it is not possible to end up inside the 10 after a kick return...
		[GameManager setYardsToGo:10];
		
		return;
		
	}
	
	// Check For Touchdown
	if ([GameManager getLineOfScrimmage] < 1)
	{
		// Update Commentary
		[GameManager buildCommentary:@"TOUCHDOWN!\n"];
		
		// Update Score
		if ([GameManager getPossession] == 0)
		{
			[GameManager setHomeScore:[GameManager getHomeScore] + 6];
		}
		else
		{
			[GameManager setVisitorScore:[GameManager getVisitorScore] + 6];
		}
		
		if ([GameManager getQuarter] == 5)
		{
			[GameManager setNavFlag:END_OF_OVERTIME_NAV_FLAG];
		}
		else
		{
            [GameManager setNavFlag:EXTRA_POINT_NAV_FLAG];
		}
		
		// Update Clock, take 15 seconds off clock
		[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
		[ClockManager runPlayTimeOffClock];
		
		// Set Kickoff Flag
		[GameManager setDown:1];
        [GameManager setYardsToGo:10];
		
		return;
	}
	
	// Check For Safety
	if ([GameManager getLineOfScrimmage] > 99)
	{
		// Update Commentary
		[GameManager buildCommentary:@"Safety!\n"];
		
		// Update Score
		if ([GameManager getPossession] == 0)
		{
			[GameManager setVisitorScore:[GameManager getVisitorScore] + 2];
		}
		else
		{
			[GameManager setHomeScore:[GameManager getHomeScore] + 2];
		}
		
		if ([GameManager getQuarter] == 5)
		{
			[GameManager setNavFlag:END_OF_OVERTIME_NAV_FLAG];
		}
		else
		{
			[GameManager setNavFlag:NEED_KICKOFF_NAV_FLAG];
		}
		
		// Adjust Clock
		[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
		[ClockManager runPlayTimeOffClock];
		
		// Set Kickoff Flag
		[GameManager setDown:1];
        [GameManager setYardsToGo:10];
		
		return;
	}
	
	int chanceOfFumble = 0;
	
	// Check for Fumble
	if ([GameManager getDefensiveStanceSelected] == NORMAL_KICK_OFF_RETURN)
	{
		chanceOfFumble = 2;
	}
	else // Reverse
	{
		chanceOfFumble = 4;
	}
	
	if (rollForFumble <= chanceOfFumble)
	{
		[GameManager buildCommentary:@"The ball is fumbled!\n"];
		
		if (rollForFumbleRecovery <= 45) // Recovered by defense
		{
			[GameManager buildCommentary:@"Recovered by the kicking team!\n"];
			
			[GameManager changePossession];
			
			[GameManager setDown:1];
			
			// Invert the LOS
			[GameManager setLineOfScrimmage:100 - [GameManager getLineOfScrimmage]];
			[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// Determine if the Yard Marker is at the Goal Line
			if ([GameManager getLineOfScrimmage] > 10)
			{
				[GameManager setYardsToGo:10];
			}
			else
			{
				[GameManager setYardsToGo:[GameManager getLineOfScrimmage]];
			}
			
			return;
		}
		else // Recovered By Offense
		{
			[GameManager buildCommentary:@"Recovered by the receiving team!\n"];
		}
	}
	
	// If there is no score, update situation and exit
	
	[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
	[ClockManager runPlayTimeOffClock];
	
	[GameManager setDown:1];
	
	// At this point it is not possible to end up inside the 10 after a kick return...
	[GameManager setYardsToGo:10];
	
	[GameManager buildCommentary:@"First Down!\n"];
}

@end
