//
//  UnitTestManager.m
//  Gridiron
//
//  Created by David Hardenbrook on 9/1/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "UnitTestManager.h"


@implementation UnitTestManager

+ (void)testRollManagerRollTwoThreeSidedDice
{
	int x = 0;
	int twos = 0;
	int threes = 0;
	int fours = 0;
	int fives = 0;
	int sixes = 0;
	int unknown = 0;
	int currentRoll = 0;
	int currentRollTotal = 0;
	float rollAverage = 0;
	
	for (x=0; x < 1000; x++)
	{
		currentRoll = [RollManager rollTwoThreeSidedDice];
		
		if (currentRoll == 2)
		{
			twos++;
		}
		else if (currentRoll == 3)
		{
			threes++;
		}
		else if (currentRoll == 4)
		{
			fours++;
		}
		else if (currentRoll == 5)
		{
			fives++;
		}
		else if (currentRoll == 6)
		{
			sixes++;
		}
		else
		{
			unknown++;
		}
		
		currentRollTotal = currentRollTotal + currentRoll;
	}
	
	NSLog (@"Twos   %@", [[NSNumber numberWithInt:twos] stringValue]);
	NSLog (@"Threes %@", [[NSNumber numberWithInt:threes] stringValue]);
	NSLog (@"Fours  %@", [[NSNumber numberWithInt:fours] stringValue]);
	NSLog (@"Fives  %@", [[NSNumber numberWithInt:fives] stringValue]);
	NSLog (@"Sixes  %@", [[NSNumber numberWithInt:sixes] stringValue]);
	NSLog (@"Unknown  %@", [[NSNumber numberWithInt:unknown] stringValue]);
	
	rollAverage = currentRollTotal / 1000.0;
	
	NSLog (@"Avaerage is %@", [[NSNumber numberWithFloat:rollAverage] stringValue]);
}

+ (void)testRollManagerRollTwoSixSidedDice
{
	int x = 0;
	int twos = 0;
	int threes = 0;
	int fours = 0;
	int fives = 0;
	int sixes = 0;
	int sevens = 0;
	int eights = 0;
	int nines = 0;
	int tens = 0;
	int elevens = 0;
	int twelves = 0;
	int unknown = 0;
	int currentRoll = 0;
	int currentRollTotal = 0;
	float rollAverage = 0;
	
	for (x=0; x < 1000; x++)
	{
		currentRoll = [RollManager rollTwoSixSidedDice];
		
		if (currentRoll == 2)
		{
			twos++;
		}
		else if (currentRoll == 3)
		{
			threes++;
		}
		else if (currentRoll == 4)
		{
			fours++;
		}
		else if (currentRoll == 5)
		{
			fives++;
		}
		else if (currentRoll == 6)
		{
			sixes++;
		}
		else if (currentRoll == 7)
		{
			sevens++;
		}
		else if (currentRoll == 8)
		{
			eights++;
		}
		else if (currentRoll == 9)
		{
			nines++;
		}
		else if (currentRoll == 10)
		{
			tens++;
		}
		else if (currentRoll == 11)
		{
			elevens++;
		}
		else if (currentRoll == 12)
		{
			twelves++;
		}
		else
		{
			unknown++;
		}
		
		currentRollTotal = currentRollTotal + currentRoll;
	}
	
	NSLog (@"Twos     %@", [[NSNumber numberWithInt:twos] stringValue]);
	NSLog (@"Threes   %@", [[NSNumber numberWithInt:threes] stringValue]);
	NSLog (@"Fours    %@", [[NSNumber numberWithInt:fours] stringValue]);
	NSLog (@"Fives    %@", [[NSNumber numberWithInt:fives] stringValue]);
	NSLog (@"Sixes    %@", [[NSNumber numberWithInt:sixes] stringValue]);
	NSLog (@"Sevens   %@", [[NSNumber numberWithInt:sevens] stringValue]);
	NSLog (@"Eights   %@", [[NSNumber numberWithInt:eights] stringValue]);
	NSLog (@"Nines    %@", [[NSNumber numberWithInt:nines] stringValue]);
	NSLog (@"Tens     %@", [[NSNumber numberWithInt:tens] stringValue]);
	NSLog (@"Elevens  %@", [[NSNumber numberWithInt:elevens] stringValue]);
	NSLog (@"Twelves  %@", [[NSNumber numberWithInt:twelves] stringValue]);
	NSLog (@"Unknown  %@", [[NSNumber numberWithInt:unknown] stringValue]);
	
	rollAverage = currentRollTotal / 1000.0;
	
	NSLog (@"Avaerage is %@", [[NSNumber numberWithFloat:rollAverage] stringValue]);
}

@end
