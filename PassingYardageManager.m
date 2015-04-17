
#import "PassingYardageManager.h"

@implementation PassingYardageManager

+ (int)getShortPassingYardage
{
	int resultRoll = [RollManager rollTwoThreeSidedDice];
	
	int result = 0;

	if (resultRoll == 2)
	{
		result = 1;
	}
	else if (resultRoll == 3)
	{
		result = 3;
	}
	else if (resultRoll == 4)
	{
		result = 5;
	}
	else if (resultRoll == 5)
	{
		result = 7;
	}
	else if (resultRoll == 6)
	{
		result = 9;
	}
	
	return result;
}

+ (int)getMediumPassingYardage
{
	int resultRoll = [RollManager rollTwoThreeSidedDice];
	
	int result = 0;
	
	if (resultRoll == 2)
	{
		result = 9;
	}
	else if (resultRoll == 3)
	{
		result = 12;
	}
	else if (resultRoll == 4)
	{
		result = 15;
	}
	else if (resultRoll == 5)
	{
		result = 18;
	}
	else if (resultRoll == 6)
	{
		result = 21;
	}
	
	return result;
}

+ (int)getLongPassingYardage
{
	int resultRoll = [RollManager rollTwoThreeSidedDice];
	
	int result = 0;
	
	if (resultRoll == 2)
	{
		result = 20;
	}
	else if (resultRoll == 3)
	{
		result = 25;
	}
	else if (resultRoll == 4)
	{
		result = 30;
	}
	else if (resultRoll == 5)
	{
		result = 35;
	}
	else if (resultRoll == 6)
	{
		result = 40;
	}
	
	return result;
}

@end
