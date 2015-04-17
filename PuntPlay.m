
#import "PuntPlay.h"

@implementation PuntPlay

+ (void)run
{
	int puntRoll = [RollManager rollTwoSixSidedDice];
	int puntReturnRoll = [RollManager rollTwoSixSidedDice];
	
	// Determine Punt Results
	if ([GameManager getAttackZoneSelected] == NORMAL_PUNT)
	{
		// Check to see if the punt is blocked...
		
		// Check to see how for the punt is kicked
		if (puntRoll == 2)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 30];
			[GameManager buildCommentary:@"The punt travels 30 yards down field.\n"];
		}
		else if (puntRoll == 3)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 33];
			[GameManager buildCommentary:@"The punt travels 33 yards down field.\n"];
		}
		else if (puntRoll == 4)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 36];
			[GameManager buildCommentary:@"The punt travels 36 yards down field.\n"];
		}
		else if (puntRoll == 5)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 39];
			[GameManager buildCommentary:@"The punt travels 39 yards down field.\n"];
		}
		else if (puntRoll == 6)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 42];
			[GameManager buildCommentary:@"The punt travels 42 yards down field.\n"];
		}
		else if (puntRoll == 7)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 45];
			[GameManager buildCommentary:@"The punt travels 45 yards down field.\n"];
		}
		else if (puntRoll == 8)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 48];
			[GameManager buildCommentary:@"The punt travels 48 yards down field.\n"];
		}
		else if (puntRoll == 9)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 51];
			[GameManager buildCommentary:@"The punt travels 51 yards down field.\n"];
		}
		else if (puntRoll == 10)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 54];
			[GameManager buildCommentary:@"The punt travels 54 yards down field.\n"];
		}
		else if (puntRoll == 11)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 57];
			[GameManager buildCommentary:@"The punt travels 57 yards down field.\n"];
		}
		else if (puntRoll == 12)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 60];
			[GameManager buildCommentary:@"The punt travels 60 yards down field.\n"];
		}
		
		// Check to see if the ball is kicked out of the end zone.
		if ([GameManager getLineOfScrimmage] <= 0)
		{
			[GameManager buildCommentary:@"The punt results in a touchback.\n"];
			
			[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			[GameManager setDown: 1];
			[GameManager setLineOfScrimmage: 80];
			
			// At this point it is not possible to end up inside the 10 after a kick return...
			[GameManager setYardsToGo: 10];
			
			[GameManager changePossession];
			
			return;
		}
		
		// Reverse the ball position on the field
		[GameManager setLineOfScrimmage: 100 - [GameManager getLineOfScrimmage]];
		
		// Change possession
		[GameManager changePossession];
		
		// Check for the return yardage
		if (puntReturnRoll == 2)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] + 5];
			[GameManager buildCommentary:@"The return man is chased back for a 5 yard loss!\n"];
		}
		else if (puntReturnRoll == 3)
		{
			[GameManager buildCommentary:@"The return man is hit immedialty for no gain on the return.\n"];
		}
		else if (puntReturnRoll == 4)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 1];
			[GameManager buildCommentary:@"The punt is returned 1 yard.\n"];
		}
		else if (puntReturnRoll == 5)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 2];
			[GameManager buildCommentary:@"The punt is returned 2 yards.\n"];
		}
		else if (puntReturnRoll == 6)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 3];
			[GameManager buildCommentary:@"The punt is returned 3 yards.\n"];
		}
		else if (puntReturnRoll == 7)
		{
			[GameManager buildCommentary:@"The ball is downed by the punting team.\n"];
		}
		else if (puntReturnRoll == 8)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 5];
			[GameManager buildCommentary:@"The punt is returned 5 yards.\n"];
		}
		else if (puntReturnRoll == 9)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 10];
			[GameManager buildCommentary:@"The punt is returned 10 yards.\n"];
		}
		else if (puntReturnRoll == 10)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 15];
			[GameManager buildCommentary:@"The punt is returned 15 yards.\n"];
		}
		else if (puntReturnRoll == 11)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 20];
			[GameManager buildCommentary:@"The punt is returned 20 yards.\n"];
		}
		else if (puntReturnRoll == 12)
		{
			[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - 100];
			[GameManager buildCommentary:@"The return man streaks down the sideline.\n"];
		}
		
		// Check For Touchdown
		if ([GameManager getLineOfScrimmage] < 1)
		{
			// Update Commentary
			[GameManager buildCommentary:@"Touchdown!\n"];
			
			// Update Score
			if ([GameManager getPossession] == 0)
			{
				[GameManager setHomeScore: [GameManager getHomeScore] + 6];
			}
			else
			{
				[GameManager setVisitorScore: [GameManager getVisitorScore] + 6];
			}
			
			if ([GameManager getQuarter] == 5)
			{
				[GameManager setNavFlag: END_OF_OVERTIME_NAV_FLAG];
			}
			else
			{
				[GameManager setNavFlag: EXTRA_POINT_NAV_FLAG];
			}
			
			// Update Clock
			[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// Set Kickoff Flag
			[GameManager setDown: 1];
			[GameManager setYardsToGo: 10];
			
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
				[GameManager setVisitorScore: [GameManager getVisitorScore] + 2];
			}
			else
			{
				[GameManager setHomeScore: [GameManager getHomeScore] + 2];
			}
			
			if ([GameManager getQuarter] == 5)
			{
				[GameManager setNavFlag: END_OF_OVERTIME_NAV_FLAG];
			}
			else
			{
				[GameManager setNavFlag: NEED_KICKOFF_NAV_FLAG];
			}
			
			// Adjust Clock
			[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// Set Kickoff Flag
			[GameManager setDown: 1];
			[GameManager setYardsToGo: 10];
			
			return;
		}
		
		// If there is no score, update situation and exit
		[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
		[ClockManager runPlayTimeOffClock];
		
		[GameManager setDown: 1];
		
		// At this point it is not possible to end up inside the 10 after a kick return...
		[GameManager setYardsToGo: 10];
		
		[GameManager buildCommentary:@"First Down!\n"];	
	}
}

@end
