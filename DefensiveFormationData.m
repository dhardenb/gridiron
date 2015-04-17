
#import "DefensiveFormationData.h"

static int mySweepLeftRushingZone;
static int myOffTackleLeftRushingZone;
static int myInsideRushingZone;
static int myOffTackleRightRushingZone;
static int mySweepRightRushingZone;
static int myShortLeftPassingZone;
static int myShortMiddlePassingZone;
static int myShortRightPassingZone;
static int myMiddleLeftPassingZone;
static int myMiddleRightPassingZone;
static int myLongPassingZone;

@implementation DefensiveFormationData

+ (int)getSweepLeftRushingZone
{
	return mySweepLeftRushingZone;
}

+ (void)setSweepLeftRushingZone:(int)count
{
	mySweepLeftRushingZone = count;
}

+ (int)getOffTackleLeftRushingZone
{
	return myOffTackleLeftRushingZone;
}

+ (void)setOffTackleLeftRushingZone:(int)count
{
	myOffTackleLeftRushingZone = count;
}

+ (int)getInsideRushingZone
{
	return myInsideRushingZone;
}

+ (void)setInsideRushingZone:(int)count
{
	myInsideRushingZone = count;
}

+ (int)getOffTackleRightRushingZone
{
	return myOffTackleRightRushingZone;
}

+ (void)setOffTackleRightRushingZone:(int)count
{
	myOffTackleRightRushingZone = count;
}

+ (int)getSweepRightRushingZone
{
	return mySweepRightRushingZone;
}

+ (void)setSweepRightRushingZone:(int)count
{
	mySweepRightRushingZone = count;
}

+ (int)getShortLeftPassingZone
{
	return myShortLeftPassingZone;
}

+ (void)setShortLeftPassingZone:(int)count
{
	myShortLeftPassingZone = count;
}

+ (int)getShortMiddlePassingZone
{
	return myShortMiddlePassingZone;
}

+ (void)setShortMiddlePassingZone:(int)count
{
	myShortMiddlePassingZone = count;
}

+ (int)getShortRightPassingZone
{
	return myShortRightPassingZone;
}

+ (void)setShortRightPassingZone:(int)count
{
	myShortRightPassingZone = count;
}

+ (int)getMiddleLeftPassingZone
{
	return myMiddleLeftPassingZone;
}

+ (void)setMiddleLeftPassingZone:(int)count
{
	myMiddleLeftPassingZone = count;
}

+ (int)getMiddleRightPassingZone
{
	return myMiddleRightPassingZone;
}

+ (void)setMiddleRightPassingZone:(int)count
{
	myMiddleRightPassingZone = count;
}

+ (int)getLongPassingZone
{
	return myLongPassingZone;
}

+ (void)setLongPassingZone:(int)count
{
	myLongPassingZone = count;
}

+ (int)getNumberOfDefendersInAttackZone
{
	int numberOfDefenersInAttackZone;
	
	if ([GameManager getAttackZoneSelected] == LEFT_SWEEP_RUSHING_LANE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getSweepLeftRushingZone];
	}
	else if ([GameManager getAttackZoneSelected] == LEFT_OFFTACKLE_RUSHING_LANE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getOffTackleLeftRushingZone];
	}
	else if ([GameManager getAttackZoneSelected] == LEFT_INSIDE_RUSHING_LANE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getInsideRushingZone];
	}
	else if ([GameManager getAttackZoneSelected] == RIGHT_OFFTACKLE_RUSHING_LANE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getOffTackleRightRushingZone];
	}
	else if ([GameManager getAttackZoneSelected] == RIGHT_SWEEP_RUSHING_LANE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getSweepRightRushingZone];
	}
	else if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getShortLeftPassingZone];
	}
	else if ([GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getShortMiddlePassingZone];
	}
	else if ([GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getShortRightPassingZone];
	}
	else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getMiddleLeftPassingZone];
	}
	else if ([GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getMiddleRightPassingZone];
	}
	else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
	{
		numberOfDefenersInAttackZone = [DefensiveFormationData getLongPassingZone];
	}
	
	return numberOfDefenersInAttackZone;
}

@end
