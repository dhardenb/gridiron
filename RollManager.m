
#import "RollManager.h"

@implementation RollManager

+ (void)initialize
{
	srandom(time(NULL));
}

+ (int)rollTwoThreeSidedDice
{
	int roll = (random() % 3 + 1) + (random() % 3 + 1);
	return roll;
}

+ (int)rollTwoSixSidedDice
{
	int roll = (random() % 6 + 1) + (random() % 6 + 1);
	return roll;
}

+ (int)rollOneHundredSidedDice
{
	int roll = random() % 100 + 1;
	return roll;
}

// This gets used by the Comp AI to pick offensive plays and will be going away...
+ (int)rollOneHundredTenSidedDice
{
	int roll = random() % 110 + 1;
	return roll;
}

@end
