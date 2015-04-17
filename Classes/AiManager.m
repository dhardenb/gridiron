//
//  AiManager.m
//  Gridiron
//
//  Created by David Hardenbrook on 8/1/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AiManager.h"

@implementation AiManager

+ (void)selectOffensiveFormation
{
	int roll = [RollManager rollOneHundredTenSidedDice];
	
	// I Formation - Strong Right
	if (roll <= 10)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 0];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 1];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// I Formation - Strong Left
	else if (roll <= 20)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 0];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 1];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// I Formation - Double Strong Right
	else if (roll <= 30)
	{
		[OffensiveFormationData setLeftWideReceiver: 0];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 1];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// I Formation - Double Strong Left
	else if (roll <= 40)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 0];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 1];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// Spread Formation
	else if (roll <= 50)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 1];
		[OffensiveFormationData setLeftTightEnd: 0];
		[OffensiveFormationData setRightTightEnd: 0];
		[OffensiveFormationData setRightSplitEnd: 1];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 0];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// Ace Formation
	else if (roll <= 60)
	{
		[OffensiveFormationData setLeftWideReceiver: 0];
		[OffensiveFormationData setLeftSplitEnd: 1];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 1];
		[OffensiveFormationData setRightWideReceiver: 0];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 0];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
	// Split Formation - Stong Right
	else if (roll <= 70)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 0];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 0];
		[OffensiveFormationData setLeftHalfBack: 1];
		[OffensiveFormationData setRightHalfBack: 1];
		[OffensiveFormationData setTailBack: 0];
	}
	// Split Formation - Stong Left
	else if (roll <= 80)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 0];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 0];
		[OffensiveFormationData setLeftHalfBack: 1];
		[OffensiveFormationData setRightHalfBack: 1];
		[OffensiveFormationData setTailBack: 0];
	}
	// Split Formation - Trips Right
	else if (roll <= 90)
	{
		[OffensiveFormationData setLeftWideReceiver: 0];
		[OffensiveFormationData setLeftSplitEnd: 0];
		[OffensiveFormationData setLeftTightEnd: 0];
		[OffensiveFormationData setRightTightEnd: 1];
		[OffensiveFormationData setRightSplitEnd: 1];
		[OffensiveFormationData setRightWideReceiver: 1];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 0];
		[OffensiveFormationData setLeftHalfBack: 1];
		[OffensiveFormationData setRightHalfBack: 1];
		[OffensiveFormationData setTailBack: 0];
	}
	// Split Formation - Trips Left
	else if (roll <= 100)
	{
		[OffensiveFormationData setLeftWideReceiver: 1];
		[OffensiveFormationData setLeftSplitEnd: 1];
		[OffensiveFormationData setLeftTightEnd: 1];
		[OffensiveFormationData setRightTightEnd: 0];
		[OffensiveFormationData setRightSplitEnd: 0];
		[OffensiveFormationData setRightWideReceiver: 0];
		[OffensiveFormationData setQuarterBack: 1];
		[OffensiveFormationData setFullBack: 1];
		[OffensiveFormationData setLeftHalfBack: 0];
		[OffensiveFormationData setRightHalfBack: 0];
		[OffensiveFormationData setTailBack: 1];
	}
}

+ (void)selectOffensivePlayerAndPlay
{
	BOOL playSelected = FALSE;
	
	if ([GameManager getDown] == 4)
	{
		if ([GameManager getLineOfScrimmage] <= 45)
		{
			[GameManager setOffensivePositionSelected:KICKER];
			[GameManager setAttackZoneSelected:NORMAL_FIELD_GOAL];
		}
		else
		{
			[GameManager setOffensivePositionSelected:PUNTER];
			[GameManager setAttackZoneSelected:NORMAL_PUNT];
		}
		
		playSelected = TRUE;
	}	
	
	while (!playSelected)
	{
		[self selectOffensiveFormation];
		
		int roll = [RollManager rollOneHundredTenSidedDice];
		
        // Rushing Plays
        
		if (roll <= 0)
		{
			[GameManager setOffensivePositionSelected:QUARTER_BACK];
			[GameManager setAttackZoneSelected:LEFT_INSIDE_RUSHING_LANE];
		}
		else if (roll <= 5)
		{
			if ([OffensiveFormationData getFullBack] == 1)
			{
				[GameManager setOffensivePositionSelected:FULL_BACK];
				[GameManager setAttackZoneSelected:LEFT_INSIDE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 10)
		{
			if ([OffensiveFormationData getTailBack] == 1)
			{
				[GameManager setOffensivePositionSelected:TAIL_BACK];
				[GameManager setAttackZoneSelected:LEFT_SWEEP_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 15)
		{
			if ([OffensiveFormationData getTailBack] == 1)
			{
				[GameManager setOffensivePositionSelected:TAIL_BACK];
				[GameManager setAttackZoneSelected:LEFT_OFFTACKLE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 20)
		{
			if ([OffensiveFormationData getTailBack] == 1)
			{
				[GameManager setOffensivePositionSelected:TAIL_BACK];
				[GameManager setAttackZoneSelected:LEFT_INSIDE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 25)
		{
			if ([OffensiveFormationData getTailBack] == 1)
			{
				[GameManager setOffensivePositionSelected:TAIL_BACK];
				[GameManager setAttackZoneSelected:RIGHT_OFFTACKLE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 30)
		{
			if ([OffensiveFormationData getTailBack] == 1)
			{
				[GameManager setOffensivePositionSelected:TAIL_BACK];
				[GameManager setAttackZoneSelected:RIGHT_SWEEP_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
        else if (roll <= 35)
		{
			if ([OffensiveFormationData getLeftHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_HALF_BACK];
				[GameManager setAttackZoneSelected:LEFT_INSIDE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 40)
		{
			if ([OffensiveFormationData getLeftHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_HALF_BACK];
				[GameManager setAttackZoneSelected:RIGHT_OFFTACKLE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
        else if (roll <= 45)
		{
			if ([OffensiveFormationData getRightHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_HALF_BACK];
				[GameManager setAttackZoneSelected:LEFT_OFFTACKLE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 50)
		{
			if ([OffensiveFormationData getRightHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_HALF_BACK];
				[GameManager setAttackZoneSelected:LEFT_INSIDE_RUSHING_LANE];
				playSelected = TRUE;
			}
		}
        
        // Passing Plays
        
        else if (roll <= 53)
		{
			if ([OffensiveFormationData getLeftHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_HALF_BACK];
				[GameManager setAttackZoneSelected:SHORT_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 56)
		{
			if ([OffensiveFormationData getRightHalfBack] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_HALF_BACK];
				[GameManager setAttackZoneSelected:SHORT_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
        else if (roll <= 58)
		{
			if ([OffensiveFormationData getLeftTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_TIGHT_END];
				[GameManager setAttackZoneSelected:SHORT_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 61)
		{
			if ([OffensiveFormationData getLeftTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_TIGHT_END];
				[GameManager setAttackZoneSelected:SHORT_MIDDLE_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 63)
		{
			if ([OffensiveFormationData getLeftTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_TIGHT_END];
				[GameManager setAttackZoneSelected:MIDDLE_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 65)
		{
			if ([OffensiveFormationData getRightTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_TIGHT_END];
				[GameManager setAttackZoneSelected:SHORT_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 68)
		{
			if ([OffensiveFormationData getRightTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_TIGHT_END];
				[GameManager setAttackZoneSelected:SHORT_MIDDLE_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 70)
		{
			if ([OffensiveFormationData getRightTightEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_TIGHT_END];
				[GameManager setAttackZoneSelected:MIDDLE_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
        else if (roll <= 72)
		{
			if ([OffensiveFormationData getLeftSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_SPLIT_END];
				[GameManager setAttackZoneSelected:SHORT_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 74)
		{
			if ([OffensiveFormationData getLeftSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_SPLIT_END];
				[GameManager setAttackZoneSelected:SHORT_MIDDLE_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 77)
		{
			if ([OffensiveFormationData getLeftSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_SPLIT_END];
				[GameManager setAttackZoneSelected:MIDDLE_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
        else if (roll <= 79)
		{
			if ([OffensiveFormationData getRightSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_SPLIT_END];
				[GameManager setAttackZoneSelected:SHORT_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 81)
		{
			if ([OffensiveFormationData getRightSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_SPLIT_END];
				[GameManager setAttackZoneSelected:SHORT_MIDDLE_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 84)
		{
			if ([OffensiveFormationData getRightSplitEnd] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_SPLIT_END];
				[GameManager setAttackZoneSelected:MIDDLE_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 86)
		{
			if ([OffensiveFormationData getLeftWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:SHORT_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 88)
		{
			if ([OffensiveFormationData getLeftWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:MIDDLE_LEFT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 92)
		{
			if ([OffensiveFormationData getLeftWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:LEFT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:DEEP_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 94)
		{
			if ([OffensiveFormationData getRightWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:SHORT_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 96)
		{
			if ([OffensiveFormationData getRightWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:MIDDLE_RIGHT_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
		else if (roll <= 100)
		{
			if ([OffensiveFormationData getRightWideReceiver] == 1)
			{
				[GameManager setOffensivePositionSelected:RIGHT_WIDE_RECEIVER];
				[GameManager setAttackZoneSelected:DEEP_PASSING_ZONE];
				playSelected = TRUE;
			}
		}
	}
}

+ (void)selectDefensiveFormation
{
	// roll for each player
	int rollLeftDefensiveEnd = [RollManager rollOneHundredSidedDice];
	int rollRightDefensiveEnd = [RollManager rollOneHundredSidedDice];
	int rollLeftDefensiveTackle = [RollManager rollOneHundredSidedDice];
	int rollRightDefensiveTackle = [RollManager rollOneHundredSidedDice];
	int rollLeftLinebacker = [RollManager rollOneHundredSidedDice];
	int rollMiddleLinebacker = [RollManager rollOneHundredSidedDice];
	int rollRightLinebacker = [RollManager rollOneHundredSidedDice];
	int rollLeftCornerback = [RollManager rollOneHundredSidedDice];
	int rollRightCornerback = [RollManager rollOneHundredSidedDice];
	int rollStrongSafety = [RollManager rollOneHundredSidedDice];
	int rollFreeSafety = [RollManager rollOneHundredSidedDice];
	
	// initialize each play zone
	int SweepLeftRushingZone = 0;
	int OffTackleLeftRushingZone = 0;
	int InsideRushingZone = 0;
	int OffTackleRightRushingZone = 0;
	int SweepRightRushingZone = 0;
	int ShortLeftPassingZone = 0;
	int ShortMiddlePassingZone = 0;
	int ShortRightPassingZone = 0;
	int MiddleLeftPassingZone = 0;
	int MiddleRightPassingZone = 0;
	int LongPassingZone = 0;
	
	// Set the defensive formation
	[GameManager setDefensiveFormation:CUSTOM_DEFENSIVE_FORMATION];
	
	// Left Defensive End
	if (rollLeftDefensiveEnd <= 50)
	{
		SweepLeftRushingZone++;
	}
	else
	{
		OffTackleLeftRushingZone++;
	}
	
	// Left Defensive Tackle
	if (rollLeftDefensiveTackle <= 50)
	{
		OffTackleLeftRushingZone++;
	}
	else
	{
		InsideRushingZone++;
	}
	
	// Right Defensive Tackle
	if (rollRightDefensiveTackle <= 50)
	{
		InsideRushingZone++;
	}
	else
	{
		OffTackleRightRushingZone++;
	}
	
	// Right Defensive End
	if (rollRightDefensiveEnd <= 50)
	{
		OffTackleRightRushingZone++;
	}
	else
	{
		SweepRightRushingZone++;
	}
	
	// Left Linebacker
	if (rollLeftLinebacker <= 50)
	{
		SweepLeftRushingZone++;
	}
	else
	{
		ShortLeftPassingZone++;
	}
	
	// Middle Linebacker
	if (rollMiddleLinebacker <= 25)
	{
		ShortLeftPassingZone++;
	}
	else if (rollMiddleLinebacker <= 50)
	{
		ShortMiddlePassingZone++;
	}
	else
	{
		ShortRightPassingZone++;
	}
	
	// Right Linebacker
	if (rollRightLinebacker <= 50)
	{
		ShortRightPassingZone++;
	}
	else
	{
		SweepRightRushingZone++;
	}
	
	// Left Cornerback
	if (rollLeftCornerback <= 50)
	{
		MiddleLeftPassingZone++;
	}
	else
	{
		if (ShortLeftPassingZone < 2)
		{
			ShortLeftPassingZone++;
		}
		else
		{
			MiddleLeftPassingZone++;
		}
	}
	
	// Right Cornerback
	if (rollRightCornerback <= 50)
	{
		MiddleRightPassingZone++;
	}
	else
	{
		if (ShortRightPassingZone < 2)
		{
			ShortRightPassingZone++;
		}
		else
		{
			MiddleRightPassingZone++;
		}
	}
	
	// Strong Saefty
	if (rollStrongSafety <= 50)
	{
		ShortMiddlePassingZone++;
	}
	else if (rollStrongSafety <= 75)
	{
		MiddleLeftPassingZone++;
	}
	else
	{
		MiddleRightPassingZone++;
	}
	
	// Free Safety
	if (rollFreeSafety <= 90)
	{
		LongPassingZone++;
	}
	else if (rollFreeSafety <= 95)
	{
		if (MiddleLeftPassingZone < 2)
		{
			MiddleLeftPassingZone++;
		}
		else
		{
			LongPassingZone++;
		}
	}
	else
	{
		if (MiddleRightPassingZone < 2)
		{
			MiddleRightPassingZone++;
		}
		else
		{
			LongPassingZone++;
		}
	}
	
	// Set up the defensive players in the play zones
	[DefensiveFormationData setSweepLeftRushingZone:SweepLeftRushingZone];
	[DefensiveFormationData setOffTackleLeftRushingZone:OffTackleLeftRushingZone];
	[DefensiveFormationData setInsideRushingZone:InsideRushingZone];
	[DefensiveFormationData setOffTackleRightRushingZone:OffTackleRightRushingZone];
	[DefensiveFormationData setSweepRightRushingZone:SweepRightRushingZone];
	[DefensiveFormationData setShortLeftPassingZone:ShortLeftPassingZone];
	[DefensiveFormationData setShortMiddlePassingZone:ShortMiddlePassingZone];
	[DefensiveFormationData setShortRightPassingZone:ShortRightPassingZone];
	[DefensiveFormationData setMiddleLeftPassingZone:MiddleLeftPassingZone];
	[DefensiveFormationData setMiddleRightPassingZone:MiddleRightPassingZone];
	[DefensiveFormationData setLongPassingZone:LongPassingZone];
}

+ (void)selectKickOff
{
	// Set Defaults
	[GameManager setOffensivePositionSelected:KICKER];
	[GameManager setAttackZoneSelected:NORMAL_KICK_OFF];
	
	int OffensiveScore = [GameManager getOffensiveScore];
	int DefensiveScore = [GameManager getDefensiveScore];
	
	// AI is winning
	if (OffensiveScore >= DefensiveScore)
	{
		if ([GameManager getClock] <= 120 &&
			([GameManager getQuarter] == 2 ||
			 [GameManager getQuarter] == 4))
		{
			[GameManager setAttackZoneSelected:SQUIB_KICK_OFF];
		}
	}
	else // AI is losing
	{
		if ([GameManager getClock] <= 150 &&
			[GameManager getQuarter] == 4)
		{
			[GameManager setAttackZoneSelected:ONSIDE_KICK_OFF];
		}
		else if ([GameManager getClock] <= 300 &&
				 [GameManager getQuarter] == 4)
		{
			if (DefensiveScore - OffensiveScore > 7)
			{
				[GameManager setAttackZoneSelected:ONSIDE_KICK_OFF];
			}
		}
	}
}

+ (void)selectKickOffReturn
{
	int resultRoll = [RollManager rollOneHundredSidedDice];
	
	[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
	
	int OffensiveScore = [GameManager getOffensiveScore];
	int DefensiveScore = [GameManager getDefensiveScore];
	
	// Tied
	if (DefensiveScore == OffensiveScore)
	{
		if (resultRoll <= 10)
		{
			[GameManager setDefensiveStanceSelected:REVERSE_KICK_OFF_RETURN];
		}
	}
	// AI is losing
	else if (DefensiveScore < OffensiveScore)
	{
		if (resultRoll <= 20)
		{
			[GameManager setDefensiveStanceSelected:REVERSE_KICK_OFF_RETURN];
		}
	}
			 
}

+ (void)selectPunt
{
	[GameManager setOffensivePositionSelected:PUNTER];
	[GameManager setAttackZoneSelected:NORMAL_PUNT];
}

+ (void)selectPuntReturn
{
	[GameManager setDefensiveStanceSelected:NORMAL_PUNT_RETURN];
}

+ (void)selectExtraPointType
{
	[GameManager setOffensivePositionSelected:KICKER];
	[GameManager setAttackZoneSelected:EXTRA_POINT];
}

+ (void)selectExtraPointStopType
{
	[GameManager setDefensiveStanceSelected:EXTRA_POINT_BLOCK];
}

+ (void)selectFieldGoal
{
	[GameManager setOffensivePositionSelected:KICKER];
	[GameManager setAttackZoneSelected:NORMAL_FIELD_GOAL];
}

@end
