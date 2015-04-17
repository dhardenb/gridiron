
#import "PassingPlay.h"

@implementation PassingPlay

+ (void)run
{
	int rollForCatchAttempt = [RollManager rollOneHundredSidedDice];
	int rollForSack = [RollManager rollOneHundredSidedDice];
	int rollForSackYardage = [RollManager rollTwoSixSidedDice];
	int rollForYardsAfterCatch = [RollManager rollTwoThreeSidedDice];
	
	bool isSacked = FALSE;
	bool isComplete = FALSE;
	bool isIntercepted = FALSE;
	
	////////////////////
	// Check For Sack //
	////////////////////
	
	if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
		[GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
	{
		if (rollForSack <= 5)
		{
			isSacked = TRUE;
		}
	}
	else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
	{
		if (rollForSack <= 10)
		{
			isSacked = TRUE;
		}
	}
	
	if (isSacked)
	{
		[GameManager buildCommentary: @"The quarterback is sacked!\n"];
		[GameManager setPlayResult: rollForSackYardage * -1];
        [GameManager setWasSacked: TRUE];
		[GameManager runEndOfPlay];
		return;
	}
	
	///////////////////////////////////////////
	// Figure out it if the pass is complete //
	///////////////////////////////////////////
	
	int numberOfDefenersInAttackZone = [DefensiveFormationData getNumberOfDefendersInAttackZone];
    int numberOfRecieversAttackingZone = [OffensiveFormationData getNumberOfRecieversAttackingZone];
    int attackingStrengthInZone = numberOfRecieversAttackingZone - numberOfDefenersInAttackZone;
	
    int chanceOfCompletion;
	int chanceOfInterception;
	
	if (attackingStrengthInZone == 4)
	{
        chanceOfInterception = 0;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 95;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 85;
        }
        else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
        {
            chanceOfCompletion = 75;
        }
	}
	else if (attackingStrengthInZone == 3)
	{
        chanceOfInterception = 1;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 90;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 75;
        }
	}
	else if (attackingStrengthInZone == 2)
	{
        chanceOfInterception = 1;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 85;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 65;
        }
        else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
        {
            chanceOfCompletion = 50;
        }
	}
    else if (attackingStrengthInZone == 1)
	{
        chanceOfInterception = 2;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 80;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 55;
        }
	}
    else if (attackingStrengthInZone == 0)
	{
        chanceOfInterception = 2;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 75;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 50;
        }
        else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
        {
            chanceOfCompletion = 25;
        }
	}
    else if (attackingStrengthInZone == -1)
	{
        chanceOfInterception = 3;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 50;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 30;
        }
	}
    else if (attackingStrengthInZone == -2)
	{
        chanceOfInterception = 3;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 25;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 15;
        }
        else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
        {
            chanceOfCompletion = 0;
        }
	}
    else if (attackingStrengthInZone == -3)
	{
        chanceOfInterception = 4;
        
        if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
            [GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
        {
            chanceOfCompletion = 0;
        }
        else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
                 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
        {
            chanceOfCompletion = 0;
        }
	}
	
	///////////////////////////////////////////
	// Determine the base yardage of attempt //
	///////////////////////////////////////////
	
	if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
		[GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
		[GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
	{
		[GameManager setPlayResult:[PassingYardageManager getShortPassingYardage]];
	}
	else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
			 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
	{
		[GameManager setPlayResult:[PassingYardageManager getMediumPassingYardage]];
	}
	else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
	{
		[GameManager setPlayResult:[PassingYardageManager getLongPassingYardage]];
	}
	
	//////////////////////////////////////////////////////////////////
	// Determine if the pass is complete, incomplete or intercepted //
	//////////////////////////////////////////////////////////////////
	
	if (rollForCatchAttempt <= chanceOfInterception)
	{
		isIntercepted = TRUE;
	}
	else if (rollForCatchAttempt >= 100 - chanceOfCompletion)
	{
		isComplete = TRUE;
	}
    
	if (isIntercepted) // intercepted
	{
		if ([GameManager getLineOfScrimmage] - [GameManager getPlayResult] < 1)
		{
			[GameManager buildCommentary:@"The pass is intercepted in the end zone!\n"];
		}
		else
		{
			[GameManager buildCommentary:@"The pass is intercepted "];
			[GameManager buildCommentary:[[NSNumber numberWithInt:[GameManager getPlayResult]] stringValue]];
			[GameManager buildCommentary:@" yards down field!\n"];
		}
		
		// Check for Two Point Conversion
		if ([GameManager getAttemptingTwoPoints] == 1)
		{
			[GameManager buildCommentary:@"The Two Point Conversion fails!\n"];
			
			[GameManager setDown: 1];
			[GameManager setYardsToGo: 10];
			[GameManager setNavFlag: NEED_KICKOFF_NAV_FLAG];
			
			// We don't have to worry about the possability of overtime here
			// because you can never get to a two point conversion in overtime.
			[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// There are no saftely, fumbles, etc.. .so we can exit now
			// After we reset the flag...
			[GameManager setAttemptingTwoPoints:0];
			
			return;
		}
		
		[GameManager changePossession];
		
		[GameManager setDown: 1];
		
		// Find new line of scrimmage
		[GameManager setLineOfScrimmage: [GameManager getLineOfScrimmage] - [GameManager getPlayResult]];
		
		// Invert the LOS
		if ([GameManager getLineOfScrimmage] > 0)
		{
			[GameManager setLineOfScrimmage:100 - [GameManager getLineOfScrimmage]];
		}
		else // This would be a touch back situation...
		{
			[GameManager setLineOfScrimmage: 80];
		}
		
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
	if (isComplete) // completed
	{
		//////////////////////////////////////////
		// Comment on where the ball the caught //
		//////////////////////////////////////////
		
		if ([GameManager getLineOfScrimmage] - [GameManager getPlayResult] < 1)
		{
			[GameManager buildCommentary:@"The pass is caught in the end zone!\n"];
		}
		else
		{
			[GameManager buildCommentary:@"The pass is caught "];
			[GameManager buildCommentary:[[NSNumber numberWithInt:[GameManager getPlayResult]] stringValue]];
			[GameManager buildCommentary:@" yards down field.\n"];
		}
	}
	else // incomplete
	{
		[GameManager buildCommentary:@"The pass is incomplete!\n"];
		
		// Check for Two Point Conversion
		if ([GameManager getAttemptingTwoPoints] == 1)
		{
			[GameManager buildCommentary:@"The Two Point Conversion fails!\n"];
			
			[GameManager setDown: 1];
			[GameManager setYardsToGo: 10];
			[GameManager setNavFlag: NEED_KICKOFF_NAV_FLAG];
			
			// We don't have to worry about the possability of overtime here
			// because you can never get to a two point conversion in overtime.
			[GameManager setGameClockStatus:GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// There are no saftely, fumbles, etc.. .so we can exit now
			// After we reset the flag...
			[GameManager setAttemptingTwoPoints:0];
			
			return;
		}
		
		[GameManager setPlayResult:0];
		
		// adjust down
		[GameManager setDown:[GameManager getDown] +1];
		
		// Check for a change of possession on downs
		if ([GameManager getDown] > 4)
		{
			[GameManager buildCommentary:@"The ball changes possession on loss of downs! "];
			
			[GameManager changePossession];
			[GameManager setDown: 1];
			
			// Invert the LOS
			[GameManager setLineOfScrimmage: 100 - [GameManager getLineOfScrimmage]];
			
			[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
			[ClockManager runPlayTimeOffClock];
			
			// Determine if the Yard Marker is at the Goal Line
			if ([GameManager getLineOfScrimmage] > 10)
			{
				[GameManager setYardsToGo: 10];
			}
			else
			{
				[GameManager setYardsToGo: [GameManager getLineOfScrimmage]];
			}
			
			return;
		}
		
		// Adjust the clock
		[GameManager setGameClockStatus: GAME_CLOCK_STOPPED];
		[ClockManager runPlayTimeOffClock];
		
		return;
	}
	
	////////////////////////////////////////////
	// Caluclate yards gained after the catch //
	////////////////////////////////////////////
	
	if ([GameManager getLineOfScrimmage] - [GameManager getPlayResult] > 0) // Don't calculate if the receiver already scored a TD...
	{
		int yardsAfterCatch = 0;
		[GameManager buildCommentary:@"The receiver runs for "];
		
		if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE ||
			[GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE ||
			[GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
		{
			if (rollForYardsAfterCatch == 2)
			{
				yardsAfterCatch = 3;
			}
			else if (rollForYardsAfterCatch == 3)
			{
				yardsAfterCatch = 1;
			}
			else if (rollForYardsAfterCatch == 4)
			{
				yardsAfterCatch = 0;
			}
			else if (rollForYardsAfterCatch == 5)
			{
				yardsAfterCatch = 2;
			}
			else if (rollForYardsAfterCatch == 6)
			{
				yardsAfterCatch = 4;
			}
		}
		else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE ||
				 [GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
		{
			if (rollForYardsAfterCatch == 2)
			{
				yardsAfterCatch = 9;
			}
			else if (rollForYardsAfterCatch == 3)
			{
				yardsAfterCatch = 3;
			}
			else if (rollForYardsAfterCatch == 4)
			{
				yardsAfterCatch = 0;
			}
			else if (rollForYardsAfterCatch == 5)
			{
				yardsAfterCatch = 6;
			}
			else if (rollForYardsAfterCatch == 6)
			{
				yardsAfterCatch = 12;
			}
		}
		else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
		{
			if (rollForYardsAfterCatch == 2)
			{
				yardsAfterCatch = 15;
			}
			else if (rollForYardsAfterCatch == 3)
			{
				yardsAfterCatch = 5;
			}
			else if (rollForYardsAfterCatch == 4)
			{
				yardsAfterCatch = 0;
			}
			else if (rollForYardsAfterCatch == 5)
			{
				yardsAfterCatch = 10;
			}
			else if (rollForYardsAfterCatch == 6)
			{
				yardsAfterCatch = 20;
			}
		}
		
		// If the YAC result in a touchdown, truncate the YAC to be equal to the remaining
		// yards after the catch
		if ([GameManager getLineOfScrimmage] - [GameManager getPlayResult] - yardsAfterCatch < 1)
		{
			yardsAfterCatch = [GameManager getLineOfScrimmage] - [GameManager getPlayResult];
		}
		
		[GameManager buildCommentary:[[NSNumber numberWithInt:yardsAfterCatch] stringValue]];
		[GameManager buildCommentary:@" yards after the catch.\n"];
		
		[GameManager setPlayResult: [GameManager getPlayResult] + yardsAfterCatch];
	}
	
	[GameManager runEndOfPlay];
}

@end
