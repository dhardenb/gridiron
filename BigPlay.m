
#import "BigPlay.h"

@implementation BigPlay

- (BigPlay *)init
{	
	if ((self = [super init]))
    {
		bigPlayResult = 0;
        rollForOccurance = [RollManager rollOneHundredSidedDice];
        rollForYardage = [RollManager rollOneHundredSidedDice];
        offensivePositionSelected = [GameManager getOffensivePositionSelected];
    }
	
	return self;
}

- (BigPlay *)initForTest
    :(int)testRollForOccurance
    :(int)testRollForYardage
    :(int)testOffensivePositionSelected
{
    if ((self = [super init]))
    {
		bigPlayResult = 0;
        rollForOccurance = testRollForOccurance;
        rollForYardage = testRollForYardage;
        offensivePositionSelected = testOffensivePositionSelected;
    }
	
	return self;
}

- (int)checkForBadPlay {
	
	if (rollForOccurance <= 20)
		[self findDefensiveBonus];
	
	return bigPlayResult;
}

- (int)checkForAveragePlay {
	
	if (rollForOccurance <= 5)
		[self findDefensiveBonus];
	else if (rollForOccurance >= 96)
		[self findOffensiveBonus];
	
	return bigPlayResult;
}

- (int)checkForGoodPlay {
	
	if (rollForOccurance >= 80)
		[self findOffensiveBonus];
	
	return bigPlayResult;
}

- (void)findDefensiveBonus {

	bigPlayResult = -3;
}

- (void)findOffensiveBonus {
	
	if (offensivePositionSelected == QUARTER_BACK)
		[self findQuarterBackResults];
	else if (offensivePositionSelected == FULL_BACK)
		[self findFullBackResults];
	else if (offensivePositionSelected == TAIL_BACK)
		[self findTailBackResults];
	else
		[self findHalfBackResults];
}

- (void)findQuarterBackResults {
	
	if (rollForYardage <= 10)
		bigPlayResult = 1;
	else if (rollForYardage <= 20)
		bigPlayResult = 1;
	else if (rollForYardage <= 30)
		bigPlayResult = 1;
	else if (rollForYardage <= 40)
		bigPlayResult = 1;
	else if (rollForYardage <= 50)
		bigPlayResult = 1;
	else if (rollForYardage <= 60)
		bigPlayResult = 2;
	else if (rollForYardage <= 70)
		bigPlayResult = 2;
	else if (rollForYardage <= 80)
		bigPlayResult = 2;
	else if (rollForYardage <= 90)
		bigPlayResult = 2;
	else
		bigPlayResult = 2;
}

- (void)findFullBackResults {
	
	if (rollForYardage <= 10)
		bigPlayResult = 1;
	else if (rollForYardage <= 20)
		bigPlayResult = 2;
	else if (rollForYardage <= 30)
		bigPlayResult = 3;
	else if (rollForYardage <= 40)
		bigPlayResult = 4;
	else if (rollForYardage <= 50)
		bigPlayResult = 5;
	else if (rollForYardage <= 60)
		bigPlayResult = 6;
	else if (rollForYardage <= 70)
		bigPlayResult = 7;
	else if (rollForYardage <= 80)
		bigPlayResult = 8;
	else if (rollForYardage <= 90)
		bigPlayResult = 9;
	else
		bigPlayResult = 10;
}

- (void)findHalfBackResults {
	
	if (rollForYardage <= 10)
		bigPlayResult = 1;
	else if (rollForYardage <= 20)
		bigPlayResult = 2;
	else if (rollForYardage <= 30)
		bigPlayResult = 3;
	else if (rollForYardage <= 40)
		bigPlayResult = 4;
	else if (rollForYardage <= 50)
		bigPlayResult = 5;
	else if (rollForYardage <= 60)
		bigPlayResult = 10;
	else if (rollForYardage <= 70)
		bigPlayResult = 15;
	else if (rollForYardage <= 80)
		bigPlayResult = 20;
	else if (rollForYardage <= 90)
		bigPlayResult = 25;
	else
		bigPlayResult = 30;
}

- (void)findTailBackResults {
	
	if (rollForYardage <= 10)
		bigPlayResult = 1;
	else if (rollForYardage <= 20)
		bigPlayResult = 2;
	else if (rollForYardage <= 30)
		bigPlayResult = 3;
	else if (rollForYardage <= 40)
		bigPlayResult = 4;
	else if (rollForYardage <= 50)
		bigPlayResult = 5;
	else if (rollForYardage <= 60)
		bigPlayResult = 10;
	else if (rollForYardage <= 70)
		bigPlayResult = 25;
	else if (rollForYardage <= 80)
		bigPlayResult = 50;
	else if (rollForYardage <= 90)
		bigPlayResult = 75;
	else
		bigPlayResult = 100;
}

@end
