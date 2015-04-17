//
//  DefenseView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DefenseView.h"

@implementation DefenseView

- (int)getPlayerCurrentlyMoving
{
	return myPlayerCurrentlyMoving;
}

- (void)setPlayerCurrentlyMoving:(int)playerPosition
{
	myPlayerCurrentlyMoving = playerPosition;
}

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		[self setPlayerCurrentlyMoving:NO_POSITION_SELECTED];
        
        float playerLength = 32;
		
		myLeftSweepLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(13, 170, playerLength, playerLength)];
		myLeftSweepLeftDefender.backgroundColor = [UIColor clearColor];
		[myLeftSweepLeftDefender setPosition:LEFT_SWEEP_LEFT_DEFENDER];
		[self addSubview:myLeftSweepLeftDefender];
		[myLeftSweepLeftDefender release];
		
		myLeftSweepMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(32, 170, playerLength, playerLength)];
		myLeftSweepMiddleDefender.backgroundColor = [UIColor clearColor];
		[myLeftSweepMiddleDefender setPosition:LEFT_SWEEP_MIDDLE_DEFENDER];
		[self addSubview:myLeftSweepMiddleDefender];
		[myLeftSweepMiddleDefender release];
		
		myLeftSweepRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(51, 170, playerLength, playerLength)];
		myLeftSweepRightDefender.backgroundColor = [UIColor clearColor];
		[myLeftSweepRightDefender setPosition:LEFT_SWEEP_RIGHT_DEFENDER];
		[self addSubview:myLeftSweepRightDefender];
		[myLeftSweepRightDefender release];
		
		myLeftOffTackleLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(107, 170, playerLength, playerLength)];
		myLeftOffTackleLeftDefender.backgroundColor = [UIColor clearColor];
		[myLeftOffTackleLeftDefender setPosition:LEFT_OFF_TACKLE_LEFT_DEFENDER];
		[self addSubview:myLeftOffTackleLeftDefender];
		[myLeftOffTackleLeftDefender release];
		
		myLeftOffTackleMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(126, 170, playerLength, playerLength)];
		myLeftOffTackleMiddleDefender.backgroundColor = [UIColor clearColor];
		[myLeftOffTackleMiddleDefender setPosition:LEFT_OFF_TACKLE_MIDDLE_DEFENDER];
		[self addSubview:myLeftOffTackleMiddleDefender];
		[myLeftOffTackleMiddleDefender release];
		
		myLeftOffTackleRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(145, 170, playerLength, playerLength)];
		myLeftOffTackleRightDefender.backgroundColor = [UIColor clearColor];
		[myLeftOffTackleRightDefender setPosition:LEFT_OFF_TACKLE_RIGHT_DEFENDER];
		[self addSubview:myLeftOffTackleRightDefender];
		[myLeftOffTackleRightDefender release];
		
		myLeftInsideLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(201, 170, playerLength, playerLength)];
		myLeftInsideLeftDefender.backgroundColor = [UIColor clearColor];
		[myLeftInsideLeftDefender setPosition:7];
		[self addSubview:myLeftInsideLeftDefender];
		[myLeftInsideLeftDefender release];
		
		myLeftInsideMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(220, 170, playerLength, playerLength)];
		myLeftInsideMiddleDefender.backgroundColor = [UIColor clearColor];
		[myLeftInsideMiddleDefender setPosition:8];
		[self addSubview:myLeftInsideMiddleDefender];
		[myLeftInsideMiddleDefender release];
		
		myLeftInsideRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(239, 170, playerLength, playerLength)];
		myLeftInsideRightDefender.backgroundColor = [UIColor clearColor];
		[myLeftInsideRightDefender setPosition:9];
		[self addSubview:myLeftInsideRightDefender];
		[myLeftInsideRightDefender release];
		
		myRightOffTackleLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(295, 170, playerLength, playerLength)];
		myRightOffTackleLeftDefender.backgroundColor = [UIColor clearColor];
		[myRightOffTackleLeftDefender setPosition:10];
		[self addSubview:myRightOffTackleLeftDefender];
		[myRightOffTackleLeftDefender release];
		
		myRightOffTackleMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(314, 170, playerLength, playerLength)];
		myRightOffTackleMiddleDefender.backgroundColor = [UIColor clearColor];
		[myRightOffTackleMiddleDefender setPosition:11];
		[self addSubview:myRightOffTackleMiddleDefender];
		[myRightOffTackleMiddleDefender release];
		
		myRightOffTackleRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(333, 170, playerLength, playerLength)];
		myRightOffTackleRightDefender.backgroundColor = [UIColor clearColor];
		[myRightOffTackleRightDefender setPosition:12];
		[self addSubview:myRightOffTackleRightDefender];
		[myRightOffTackleRightDefender release];
		
		myRightSweepLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(389, 170, playerLength, playerLength)];
		myRightSweepLeftDefender.backgroundColor = [UIColor clearColor];
		[myRightSweepLeftDefender setPosition:13];
		[self addSubview:myRightSweepLeftDefender];
		[myRightSweepLeftDefender release];
		
		myRightSweepMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(408, 170, playerLength, playerLength)];
		myRightSweepMiddleDefender.backgroundColor = [UIColor clearColor];
		[myRightSweepMiddleDefender setPosition:14];
		[self addSubview:myRightSweepMiddleDefender];
		[myRightSweepMiddleDefender release];
		
		myRightSweepRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(427, 170, playerLength, playerLength)];
		myRightSweepRightDefender.backgroundColor = [UIColor clearColor];
		[myRightSweepRightDefender setPosition:15];
		[self addSubview:myRightSweepRightDefender];
		[myRightSweepRightDefender release];
		
		myShortLeftFlankLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(38, 125, playerLength, playerLength)];
		myShortLeftFlankLeftDefender.backgroundColor = [UIColor clearColor];
		[myShortLeftFlankLeftDefender setPosition:16];
		[self addSubview:myShortLeftFlankLeftDefender];
		[myShortLeftFlankLeftDefender release];
		
		myShortLeftFlankMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(63, 125, playerLength, playerLength)];
		myShortLeftFlankMiddleDefender.backgroundColor = [UIColor clearColor];
		[myShortLeftFlankMiddleDefender setPosition:17];
		[self addSubview:myShortLeftFlankMiddleDefender];
		[myShortLeftFlankMiddleDefender release];
		
		myShortLeftFlankRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(88, 125, playerLength, playerLength)];
		myShortLeftFlankRightDefender.backgroundColor = [UIColor clearColor];
		[myShortLeftFlankRightDefender setPosition:18];
		[self addSubview:myShortLeftFlankRightDefender];
		[myShortLeftFlankRightDefender release];
		
		myShortMiddleFlankLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(195, 125, playerLength, playerLength)];
		myShortMiddleFlankLeftDefender.backgroundColor = [UIColor clearColor];
		[myShortMiddleFlankLeftDefender setPosition:19];
		[self addSubview:myShortMiddleFlankLeftDefender];
		[myShortMiddleFlankLeftDefender release];
		
		myShortMiddleFlankMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(220, 125, playerLength, playerLength)];
		myShortMiddleFlankMiddleDefender.backgroundColor = [UIColor clearColor];
		[myShortMiddleFlankMiddleDefender setPosition:20];
		[self addSubview:myShortMiddleFlankMiddleDefender];
		[myShortMiddleFlankMiddleDefender release];
		
		myShortMiddleFlankRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(245, 125, playerLength, playerLength)];
		myShortMiddleFlankRightDefender.backgroundColor = [UIColor clearColor];
		[myShortMiddleFlankRightDefender setPosition:21];
		[self addSubview:myShortMiddleFlankRightDefender];
		[myShortMiddleFlankRightDefender release];
		
		myShortRightFlankLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(352, 125, playerLength, playerLength)];
		myShortRightFlankLeftDefender.backgroundColor = [UIColor clearColor];
		[myShortRightFlankLeftDefender setPosition:22];
		[self addSubview:myShortRightFlankLeftDefender];
		[myShortRightFlankLeftDefender release];
		
		myShortRightFlankMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(377, 125, playerLength, playerLength)];
		myShortRightFlankMiddleDefender.backgroundColor = [UIColor clearColor];
		[myShortRightFlankMiddleDefender setPosition:23];
		[self addSubview:myShortRightFlankMiddleDefender];
		[myShortRightFlankMiddleDefender release];
		
		myShortRightFlankRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(402, 125, playerLength, playerLength)];
		myShortRightFlankRightDefender.backgroundColor = [UIColor clearColor];
		[myShortRightFlankRightDefender setPosition:24];
		[self addSubview:myShortRightFlankRightDefender];
		[myShortRightFlankRightDefender release];
		
		myMediumLeftSideLineLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(65, 80, playerLength, playerLength)];
		myMediumLeftSideLineLeftDefender.backgroundColor = [UIColor clearColor];
		[myMediumLeftSideLineLeftDefender setPosition:25];
		[self addSubview:myMediumLeftSideLineLeftDefender];
		[myMediumLeftSideLineLeftDefender release];
		
		myMediumLeftSideLineMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(102.5, 80, playerLength, playerLength)];
		myMediumLeftSideLineMiddleDefender.backgroundColor = [UIColor clearColor];
		[myMediumLeftSideLineMiddleDefender setPosition:26];
		[self addSubview:myMediumLeftSideLineMiddleDefender];
		[myMediumLeftSideLineMiddleDefender release];
		
		myMediumLeftSideLineRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(140, 80, playerLength, playerLength)];
		myMediumLeftSideLineRightDefender.backgroundColor = [UIColor clearColor];
		[myMediumLeftSideLineRightDefender setPosition:27];
		[self addSubview:myMediumLeftSideLineRightDefender];
		[myMediumLeftSideLineRightDefender release];
		
		myMediumRightSideLineLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(300, 80, playerLength, playerLength)];
		myMediumRightSideLineLeftDefender.backgroundColor = [UIColor clearColor];
		[myMediumRightSideLineLeftDefender setPosition:28];
		[self addSubview:myMediumRightSideLineLeftDefender];
		[myMediumRightSideLineLeftDefender release];
		
		myMediumRightSideLineMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(337.5, 80, playerLength, playerLength)];
		myMediumRightSideLineMiddleDefender.backgroundColor = [UIColor clearColor];
		[myMediumRightSideLineMiddleDefender setPosition:29];
		[self addSubview:myMediumRightSideLineMiddleDefender];
		[myMediumRightSideLineMiddleDefender release];
		
		myMediumRightSideLineRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(375, 80, playerLength, playerLength)];
		myMediumRightSideLineRightDefender.backgroundColor = [UIColor clearColor];
		[myMediumRightSideLineRightDefender setPosition:30];
		[self addSubview:myMediumRightSideLineRightDefender];
		[myMediumRightSideLineRightDefender release];
		
		myLongLeftDefender = [[PlayerView alloc] initWithFrame:CGRectMake(143, 35, playerLength, playerLength)];
		myLongLeftDefender.backgroundColor = [UIColor clearColor];
		[myLongLeftDefender setPosition:31];
		[self addSubview:myLongLeftDefender];
		[myLongLeftDefender release];
		
		myLongMiddleDefender = [[PlayerView alloc] initWithFrame:CGRectMake(220, 35, playerLength, playerLength)];
		myLongMiddleDefender.backgroundColor = [UIColor clearColor];
		[myLongMiddleDefender setPosition:32];
		[self addSubview:myLongMiddleDefender];
		[myLongMiddleDefender release];
		
		myLongRightDefender = [[PlayerView alloc] initWithFrame:CGRectMake(297, 35, playerLength, playerLength)];
		myLongRightDefender.backgroundColor = [UIColor clearColor];
		[myLongRightDefender setPosition:33];
		[self addSubview:myLongRightDefender];
		[myLongRightDefender release];
    }
	
    return self;
}

- (void)drawRect:(CGRect)rect
{
	[self resetPlayerPositions];
	
	[self resetVisablePlayers];
	
	[self resetPlayersColor];
}

-(void)resetPlayerPositions
{
	// Reset the players positions. I need to do this because they may move around
	// any of the positions during the Defense Stance phase.
	
	CGRect frame;
	
	if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
		(([GameManager getAttackZoneSelected] == NORMAL_KICK_OFF) ||
		 ([GameManager getAttackZoneSelected] == SQUIB_KICK_OFF)))
	{
		// I reset the formation so that I know which positions
		// will be occupied. Then I change the location of those
		// know positions.
		[GameManager setDefensiveFormation:FIVE_THREE_THREE_DEFENSIVE_FORMATION];
		[self changeDefensiveFormation];
		
		frame = myLeftSweepMiddleDefender.frame;
		frame.origin.x = 20;
		frame.origin.y = 120;
		[myLeftSweepMiddleDefender setFrame:frame];
		
		frame = myLeftOffTackleMiddleDefender.frame;
		frame.origin.x = 100;
		frame.origin.y = 120;
		[myLeftOffTackleMiddleDefender setFrame:frame];
		
		frame = myLeftInsideMiddleDefender.frame;
		frame.origin.x = 180;
		frame.origin.y = 120;
		[myLeftInsideMiddleDefender setFrame:frame];
		
		frame = myRightOffTackleMiddleDefender.frame;
		frame.origin.x = 260;
		frame.origin.y = 120;
		[myRightOffTackleMiddleDefender setFrame:frame];
		
		frame = myRightSweepMiddleDefender.frame;
		frame.origin.x = 340;
		frame.origin.y = 120;
		[myRightSweepMiddleDefender setFrame:frame];
		
		frame = myShortLeftFlankMiddleDefender.frame;
		frame.origin.x = 420;
		frame.origin.y = 120;
		[myShortLeftFlankMiddleDefender setFrame:frame];
		
		frame = myShortMiddleFlankMiddleDefender.frame;
		frame.origin.x = 60;
		frame.origin.y = 40;
		[myShortMiddleFlankMiddleDefender setFrame:frame];
		
		frame = myShortRightFlankMiddleDefender.frame;
		frame.origin.x = 220;
		frame.origin.y = 40;
		[myShortRightFlankMiddleDefender setFrame:frame];
		
		frame = myMediumLeftSideLineMiddleDefender.frame;
		frame.origin.x = 380;
		frame.origin.y = 40;
		[myMediumLeftSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumRightSideLineMiddleDefender.frame;
		frame.origin.x = -40;
		frame.origin.y = -40;
		[myMediumRightSideLineMiddleDefender setFrame:frame];
		
		frame = myLongMiddleDefender.frame;
		frame.origin.x = -40;
		frame.origin.y = -40;
		[myLongMiddleDefender setFrame:frame];
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 (([GameManager getAttackZoneSelected] == ONSIDE_KICK_OFF)))
	{
		// I reset the formation so that I know which positions
		// will be occupied. Then I change the location of those
		// know positions.
		[GameManager setDefensiveFormation:FIVE_THREE_THREE_DEFENSIVE_FORMATION];
		[self changeDefensiveFormation];
		
		frame = myLeftSweepMiddleDefender.frame;
		frame.origin.x = 305;
		frame.origin.y = 80;
		[myLeftSweepMiddleDefender setFrame:frame];
		
		frame = myLeftOffTackleMiddleDefender.frame;
		frame.origin.x = 240;
		frame.origin.y = 120;
		[myLeftOffTackleMiddleDefender setFrame:frame];
		
		frame = myLeftInsideMiddleDefender.frame;
		frame.origin.x = 265;
		frame.origin.y = 120;
		[myLeftInsideMiddleDefender setFrame:frame];
		
		frame = myRightOffTackleMiddleDefender.frame;
		frame.origin.x = 290;
		frame.origin.y = 120;
		[myRightOffTackleMiddleDefender setFrame:frame];
		
		frame = myRightSweepMiddleDefender.frame;
		frame.origin.x = 315;
		frame.origin.y = 120;
		[myRightSweepMiddleDefender setFrame:frame];
		
		frame = myShortLeftFlankMiddleDefender.frame;
		frame.origin.x = 340;
		frame.origin.y = 120;
		[myShortLeftFlankMiddleDefender setFrame:frame];
		
		frame = myShortMiddleFlankMiddleDefender.frame;
		frame.origin.x = 365;
		frame.origin.y = 120;
		[myShortMiddleFlankMiddleDefender setFrame:frame];
		
		frame = myShortRightFlankMiddleDefender.frame;
		frame.origin.x = 390;
		frame.origin.y = 120;
		[myShortRightFlankMiddleDefender setFrame:frame];
		
		frame = myMediumLeftSideLineMiddleDefender.frame;
		frame.origin.x = 415;
		frame.origin.y = 120;
		[myMediumLeftSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumRightSideLineMiddleDefender.frame;
		frame.origin.x = 440;
		frame.origin.y = 120;
		[myMediumRightSideLineMiddleDefender setFrame:frame];
		
		frame = myLongMiddleDefender.frame;
		frame.origin.x = 380;
		frame.origin.y = 80;
		[myLongMiddleDefender setFrame:frame];
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 ([GameManager getAttackZoneSelected] == NORMAL_FIELD_GOAL ||
			  [GameManager getAttackZoneSelected] == EXTRA_POINT))
	{
		// I reset the formation so that I know which positions
		// will be occupied. Then I change the location of those
		// know positions.
		[GameManager setDefensiveFormation:FIVE_THREE_THREE_DEFENSIVE_FORMATION];
		[self changeDefensiveFormation];
		
		frame = myLeftSweepMiddleDefender.frame;
		frame.origin.x = 200;
		frame.origin.y = 170;
		[myLeftSweepMiddleDefender setFrame:frame];
		
		frame = myLeftOffTackleMiddleDefender.frame;
		frame.origin.x = 240;
		frame.origin.y = 170;
		[myLeftOffTackleMiddleDefender setFrame:frame];
		
		frame = myLeftInsideMiddleDefender.frame;
		frame.origin.x = 160;
		frame.origin.y = 170;
		[myLeftInsideMiddleDefender setFrame:frame];
		
		frame = myRightOffTackleMiddleDefender.frame;
		frame.origin.x = 280;
		frame.origin.y = 170;
		[myRightOffTackleMiddleDefender setFrame:frame];
		
		frame = myRightSweepMiddleDefender.frame;
		frame.origin.x = 120;
		frame.origin.y = 170;
		[myRightSweepMiddleDefender setFrame:frame];
		
		frame = myShortLeftFlankMiddleDefender.frame;
		frame.origin.x = 320;
		frame.origin.y = 170;
		[myShortLeftFlankMiddleDefender setFrame:frame];
		
		frame = myShortMiddleFlankMiddleDefender.frame;
		frame.origin.x = 220;
		frame.origin.y = 130;
		[myShortMiddleFlankMiddleDefender setFrame:frame];
		
		frame = myShortRightFlankMiddleDefender.frame;
		frame.origin.x = 180;
		frame.origin.y = 150;
		[myShortRightFlankMiddleDefender setFrame:frame];
		
		frame = myMediumLeftSideLineMiddleDefender.frame;
		frame.origin.x = 260;
		frame.origin.y = 150;
		[myMediumLeftSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumRightSideLineMiddleDefender.frame;
		frame.origin.x = 80;
		frame.origin.y = 130;
		[myMediumRightSideLineMiddleDefender setFrame:frame];
		
		frame = myLongMiddleDefender.frame;
		frame.origin.x = 360;
		frame.origin.y = 130;
		[myLongMiddleDefender setFrame:frame];
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 [GameManager getAttackZoneSelected] == NORMAL_PUNT)
	{
		// I reset the formation so that I know which positions
		// will be occupied. Then I change the location of those
		// know positions.
		[GameManager setDefensiveFormation:FIVE_THREE_THREE_DEFENSIVE_FORMATION];
		[self changeDefensiveFormation];
		
		frame = myLeftSweepMiddleDefender.frame;
		frame.origin.x = 200;
		frame.origin.y = 170;
		[myLeftSweepMiddleDefender setFrame:frame];
		
		frame = myLeftOffTackleMiddleDefender.frame;
		frame.origin.x = 240;
		frame.origin.y = 170;
		[myLeftOffTackleMiddleDefender setFrame:frame];
		
		frame = myLeftInsideMiddleDefender.frame;
		frame.origin.x = 160;
		frame.origin.y = 170;
		[myLeftInsideMiddleDefender setFrame:frame];
		
		frame = myRightOffTackleMiddleDefender.frame;
		frame.origin.x = 280;
		frame.origin.y = 170;
		[myRightOffTackleMiddleDefender setFrame:frame];
		
		frame = myRightSweepMiddleDefender.frame;
		frame.origin.x = 120;
		frame.origin.y = 170;
		[myRightSweepMiddleDefender setFrame:frame];
		
		frame = myShortLeftFlankMiddleDefender.frame;
		frame.origin.x = 320;
		frame.origin.y = 170;
		[myShortLeftFlankMiddleDefender setFrame:frame];
		
		frame = myShortMiddleFlankMiddleDefender.frame;
		frame.origin.x = 8;
		frame.origin.y = 170;
		[myShortMiddleFlankMiddleDefender setFrame:frame];
		
		frame = myShortRightFlankMiddleDefender.frame;
		frame.origin.x = 180;
		frame.origin.y = 100;
		[myShortRightFlankMiddleDefender setFrame:frame];
		
		frame = myMediumLeftSideLineMiddleDefender.frame;
		frame.origin.x = 260;
		frame.origin.y = 100;
		[myMediumLeftSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumRightSideLineMiddleDefender.frame;
		frame.origin.x = 432;
		frame.origin.y = 170;
		[myMediumRightSideLineMiddleDefender setFrame:frame];
		
		frame = myLongMiddleDefender.frame;
		frame.origin.x = -40;
		frame.origin.y = -40;
		[myLongMiddleDefender setFrame:frame];
	}
	else
	{
		[self changeDefensiveFormation];
		
		// Sweep Left Rushing Zone
		
		frame = myLeftSweepLeftDefender.frame;
		frame.origin.x = 13;
		frame.origin.y = 170;
		[myLeftSweepLeftDefender setFrame:frame];
		
		frame = myLeftSweepMiddleDefender.frame;
		frame.origin.x = 32;
		frame.origin.y = 170;
		[myLeftSweepMiddleDefender setFrame:frame];
		
		frame = myLeftSweepRightDefender.frame;
		frame.origin.x = 51;
		frame.origin.y = 170;
		[myLeftSweepRightDefender setFrame:frame];
		
		// Off Tackle Left Rushing Zone
		
		frame = myLeftOffTackleLeftDefender.frame;
		frame.origin.x = 107;
		frame.origin.y = 170;
		[myLeftOffTackleLeftDefender setFrame:frame];
		
		frame = myLeftOffTackleMiddleDefender.frame;
		frame.origin.x = 126;
		frame.origin.y = 170;
		[myLeftOffTackleMiddleDefender setFrame:frame];
		
		frame = myLeftOffTackleRightDefender.frame;
		frame.origin.x = 145;
		frame.origin.y = 170;
		[myLeftOffTackleRightDefender setFrame:frame];
		
		// Inside Rushing Zone
		
		frame = myLeftInsideLeftDefender.frame;
		frame.origin.x = 201;
		frame.origin.y = 170;
		[myLeftInsideLeftDefender setFrame:frame];
		
		frame = myLeftInsideMiddleDefender.frame;
		frame.origin.x = 220;
		frame.origin.y = 170;
		[myLeftInsideMiddleDefender setFrame:frame];
		
		frame = myLeftInsideRightDefender.frame;
		frame.origin.x = 239;
		frame.origin.y = 170;
		[myLeftInsideRightDefender setFrame:frame];
		
		// Off Tackle Right Rushing Zone
		
		frame = myRightOffTackleLeftDefender.frame;
		frame.origin.x = 294;
		frame.origin.y = 170;
		[myRightOffTackleLeftDefender setFrame:frame];
		
		frame = myRightOffTackleMiddleDefender.frame;
		frame.origin.x = 314;
		frame.origin.y = 170;
		[myRightOffTackleMiddleDefender setFrame:frame];
		
		frame = myRightOffTackleRightDefender.frame;
		frame.origin.x = 333;
		frame.origin.y = 170;
		[myRightOffTackleRightDefender setFrame:frame];
		
		// Sweep Right Rushing Zone
		
		frame = myRightSweepLeftDefender.frame;
		frame.origin.x = 389;
		frame.origin.y = 170;
		[myRightSweepLeftDefender setFrame:frame];
		
		frame = myRightSweepMiddleDefender.frame;
		frame.origin.x = 408;
		frame.origin.y = 170;
		[myRightSweepMiddleDefender setFrame:frame];
		
		frame = myRightSweepRightDefender.frame;
		frame.origin.x = 427;
		frame.origin.y = 170;
		[myRightSweepRightDefender setFrame:frame];
		
		// Short Left Passing Zone
		
		frame = myShortLeftFlankLeftDefender.frame;
		frame.origin.x = 38;
		frame.origin.y = 125;
		[myShortLeftFlankLeftDefender setFrame:frame];
		
		frame = myShortLeftFlankMiddleDefender.frame;
		frame.origin.x = 63;
		frame.origin.y = 125;
		[myShortLeftFlankMiddleDefender setFrame:frame];
		
		frame = myShortLeftFlankRightDefender.frame;
		frame.origin.x = 88;
		frame.origin.y = 125;
		[myShortLeftFlankRightDefender setFrame:frame];
		
		// Short Middle Passing Zone
		
		frame = myShortMiddleFlankLeftDefender.frame;
		frame.origin.x = 195;
		frame.origin.y = 125;
		[myShortMiddleFlankLeftDefender setFrame:frame];
		
		frame = myShortMiddleFlankMiddleDefender.frame;
		frame.origin.x = 220;
		frame.origin.y = 125;
		[myShortMiddleFlankMiddleDefender setFrame:frame];
		
		frame = myShortMiddleFlankRightDefender.frame;
		frame.origin.x = 245;
		frame.origin.y = 125;
		[myShortMiddleFlankRightDefender setFrame:frame];
		
		// Short Right Passing Zone
		
		frame = myShortRightFlankLeftDefender.frame;
		frame.origin.x = 352;
		frame.origin.y = 125;
		[myShortRightFlankLeftDefender setFrame:frame];
		
		frame = myShortRightFlankMiddleDefender.frame;
		frame.origin.x = 377;
		frame.origin.y = 125;
		[myShortRightFlankMiddleDefender setFrame:frame];
		
		frame = myShortRightFlankRightDefender.frame;
		frame.origin.x = 402;
		frame.origin.y = 125;
		[myShortRightFlankRightDefender setFrame:frame];
		
		// Medium Left Passing Zone
		
		frame = myMediumLeftSideLineLeftDefender.frame;
		frame.origin.x = 65;
		frame.origin.y = 80;
		[myMediumLeftSideLineLeftDefender setFrame:frame];
		
		frame = myMediumLeftSideLineMiddleDefender.frame;
		frame.origin.x = 102.5;
		frame.origin.y = 80;
		[myMediumLeftSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumLeftSideLineRightDefender.frame;
		frame.origin.x = 140;
		frame.origin.y = 80;
		[myMediumLeftSideLineRightDefender setFrame:frame];
		
		// Medium Right Passing Zone
		
		frame = myMediumRightSideLineLeftDefender.frame;
		frame.origin.x = 300;
		frame.origin.y = 80;
		[myMediumRightSideLineLeftDefender setFrame:frame];
		
		frame = myMediumRightSideLineMiddleDefender.frame;
		frame.origin.x = 337.5;
		frame.origin.y = 80;
		[myMediumRightSideLineMiddleDefender setFrame:frame];
		
		frame = myMediumRightSideLineRightDefender.frame;
		frame.origin.x = 375;
		frame.origin.y = 80;
		[myMediumRightSideLineRightDefender setFrame:frame];
		
		// Deep Passing Zone
		
		frame = myLongLeftDefender.frame;
		frame.origin.x = 143;
		frame.origin.y = 35;
		[myLongLeftDefender setFrame:frame];
		
		frame = myLongMiddleDefender.frame;
		frame.origin.x = 220;
		frame.origin.y = 35;
		[myLongMiddleDefender setFrame:frame];
		
		frame = myLongRightDefender.frame;
		frame.origin.x = 297;
		frame.origin.y = 35;
		[myLongRightDefender setFrame:frame];
	}
}

-(void)resetVisablePlayers
{
	// Fill each zone in with the appropriate number of defeners
	
	int sweepLeftRushingZone = [DefensiveFormationData getSweepLeftRushingZone];
	
	if (sweepLeftRushingZone == 0)
	{
		myLeftSweepLeftDefender.hidden = TRUE;
		myLeftSweepMiddleDefender.hidden = TRUE;
		myLeftSweepRightDefender.hidden = TRUE;
	}
	else if (sweepLeftRushingZone == 1)
	{
		myLeftSweepLeftDefender.hidden = TRUE;
		myLeftSweepMiddleDefender.hidden = FALSE;
		myLeftSweepRightDefender.hidden = TRUE;
	}
	else
	{
		myLeftSweepLeftDefender.hidden = FALSE;
		myLeftSweepMiddleDefender.hidden = TRUE;
		myLeftSweepRightDefender.hidden = FALSE;
	}
	
	int offTackleLeftRushingZone = [DefensiveFormationData getOffTackleLeftRushingZone];
	
	if (offTackleLeftRushingZone == 0)
	{
		myLeftOffTackleLeftDefender.hidden = TRUE;
		myLeftOffTackleMiddleDefender.hidden = TRUE;
		myLeftOffTackleRightDefender.hidden = TRUE;
	}
	else if (offTackleLeftRushingZone == 1)
	{
		myLeftOffTackleLeftDefender.hidden = TRUE;
		myLeftOffTackleMiddleDefender.hidden = FALSE;
		myLeftOffTackleRightDefender.hidden = TRUE;
	}
	else
	{
		myLeftOffTackleLeftDefender.hidden = FALSE;
		myLeftOffTackleMiddleDefender.hidden = TRUE;
		myLeftOffTackleRightDefender.hidden = FALSE;
	}
	
	int leftInsideRushingZone = [DefensiveFormationData getInsideRushingZone];
	
	if (leftInsideRushingZone == 0)
	{
		myLeftInsideLeftDefender.hidden = TRUE;
		myLeftInsideMiddleDefender.hidden = TRUE;
		myLeftInsideRightDefender.hidden = TRUE;
	}
	else if (leftInsideRushingZone == 1)
	{
		myLeftInsideLeftDefender.hidden = TRUE;
		myLeftInsideMiddleDefender.hidden = FALSE;
		myLeftInsideRightDefender.hidden = TRUE;
	}
	else
	{
		myLeftInsideLeftDefender.hidden = FALSE;
		myLeftInsideMiddleDefender.hidden = TRUE;
		myLeftInsideRightDefender.hidden = FALSE;
	}
	
	int offTackleRightRushingZone = [DefensiveFormationData getOffTackleRightRushingZone];
	
	if (offTackleRightRushingZone == 0)
	{
		myRightOffTackleLeftDefender.hidden = TRUE;
		myRightOffTackleMiddleDefender.hidden = TRUE;
		myRightOffTackleRightDefender.hidden = TRUE;
	}
	else if (offTackleRightRushingZone == 1)
	{
		myRightOffTackleLeftDefender.hidden = TRUE;
		myRightOffTackleMiddleDefender.hidden = FALSE;
		myRightOffTackleRightDefender.hidden = TRUE;
	}
	else
	{
		myRightOffTackleLeftDefender.hidden = FALSE;
		myRightOffTackleMiddleDefender.hidden = TRUE;
		myRightOffTackleRightDefender.hidden = FALSE;
	}
	
	int sweepRightRushingZone = [DefensiveFormationData getSweepRightRushingZone];
	
	if (sweepRightRushingZone == 0)
	{
		myRightSweepLeftDefender.hidden = TRUE;
		myRightSweepMiddleDefender.hidden = TRUE;
		myRightSweepRightDefender.hidden = TRUE;
	}
	else if (sweepRightRushingZone == 1)
	{
		myRightSweepLeftDefender.hidden = TRUE;
		myRightSweepMiddleDefender.hidden = FALSE;
		myRightSweepRightDefender.hidden = TRUE;
	}
	else
	{
		myRightSweepLeftDefender.hidden = FALSE;
		myRightSweepMiddleDefender.hidden = TRUE;
		myRightSweepRightDefender.hidden = FALSE;
	}
	
	int shortLeftPassingZone = [DefensiveFormationData getShortLeftPassingZone];
	
	if (shortLeftPassingZone == 0)
	{
		myShortLeftFlankLeftDefender.hidden = TRUE;
		myShortLeftFlankMiddleDefender.hidden = TRUE;
		myShortLeftFlankRightDefender.hidden = TRUE;
	}
	else if (shortLeftPassingZone == 1)
	{
		myShortLeftFlankLeftDefender.hidden = TRUE;
		myShortLeftFlankMiddleDefender.hidden = FALSE;
		myShortLeftFlankRightDefender.hidden = TRUE;
	}
	else
	{
		myShortLeftFlankLeftDefender.hidden = FALSE;
		myShortLeftFlankMiddleDefender.hidden = TRUE;
		myShortLeftFlankRightDefender.hidden = FALSE;
	}
	
	int shortMiddlePassingZone = [DefensiveFormationData getShortMiddlePassingZone];
	
	if (shortMiddlePassingZone == 0)
	{
		myShortMiddleFlankLeftDefender.hidden = TRUE;
		myShortMiddleFlankMiddleDefender.hidden = TRUE;
		myShortMiddleFlankRightDefender.hidden = TRUE;
	}
	else if (shortMiddlePassingZone == 1)
	{
		myShortMiddleFlankLeftDefender.hidden = TRUE;
		myShortMiddleFlankMiddleDefender.hidden = FALSE;
		myShortMiddleFlankRightDefender.hidden = TRUE;
	}
	else
	{
		myShortMiddleFlankLeftDefender.hidden = FALSE;
		myShortMiddleFlankMiddleDefender.hidden = TRUE;
		myShortMiddleFlankRightDefender.hidden = FALSE;
	}
	
	int shortRightPassingZone = [DefensiveFormationData getShortRightPassingZone];
	
	if (shortRightPassingZone == 0)
	{
		myShortRightFlankLeftDefender.hidden = TRUE;
		myShortRightFlankMiddleDefender.hidden = TRUE;
		myShortRightFlankRightDefender.hidden = TRUE;
	}
	else if (shortRightPassingZone == 1)
	{
		myShortRightFlankLeftDefender.hidden = TRUE;
		myShortRightFlankMiddleDefender.hidden = FALSE;
		myShortRightFlankRightDefender.hidden = TRUE;
	}
	else
	{
		myShortRightFlankLeftDefender.hidden = FALSE;
		myShortRightFlankMiddleDefender.hidden = TRUE;
		myShortRightFlankRightDefender.hidden = FALSE;
	}
	
	int middleLeftPassingZone = [DefensiveFormationData getMiddleLeftPassingZone];
	
	if (middleLeftPassingZone == 0)
	{
		myMediumLeftSideLineLeftDefender.hidden = TRUE;
		myMediumLeftSideLineMiddleDefender.hidden = TRUE;
		myMediumLeftSideLineRightDefender.hidden = TRUE;
	}
	else if (middleLeftPassingZone == 1)
	{
		myMediumLeftSideLineLeftDefender.hidden = TRUE;
		myMediumLeftSideLineMiddleDefender.hidden = FALSE;
		myMediumLeftSideLineRightDefender.hidden = TRUE;
	}
	else
	{
		myMediumLeftSideLineLeftDefender.hidden = FALSE;
		myMediumLeftSideLineMiddleDefender.hidden = TRUE;
		myMediumLeftSideLineRightDefender.hidden = FALSE;
	}
	
	int middleRightPassingZone = [DefensiveFormationData getMiddleRightPassingZone];
	
	if (middleRightPassingZone == 0)
	{
		myMediumRightSideLineLeftDefender.hidden = TRUE;
		myMediumRightSideLineMiddleDefender.hidden = TRUE;
		myMediumRightSideLineRightDefender.hidden = TRUE;
	}
	else if (middleRightPassingZone == 1)
	{
		myMediumRightSideLineLeftDefender.hidden = TRUE;
		myMediumRightSideLineMiddleDefender.hidden = FALSE;
		myMediumRightSideLineRightDefender.hidden = TRUE;
	}
	else
	{
		myMediumRightSideLineLeftDefender.hidden = FALSE;
		myMediumRightSideLineMiddleDefender.hidden = TRUE;
		myMediumRightSideLineRightDefender.hidden = FALSE;
	}
	
	int longPassingZone = [DefensiveFormationData getLongPassingZone];
	
	if (longPassingZone == 0)
	{
		myLongLeftDefender.hidden = TRUE;
		myLongMiddleDefender.hidden = TRUE;
		myLongRightDefender.hidden = TRUE;
	}
	else if (longPassingZone == 1)
	{
		myLongLeftDefender.hidden = TRUE;
		myLongMiddleDefender.hidden = FALSE;
		myLongRightDefender.hidden = TRUE;
	}
	else
	{
		myLongLeftDefender.hidden = FALSE;
		myLongMiddleDefender.hidden = TRUE;
		myLongRightDefender.hidden = FALSE;
	}
}

-(void)resetPlayersColor
{
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		if ([GameManager getPossession] == 0)
		{
			[subview setTeam:AWAY_TEAM];
		}
		else
		{
			[subview setTeam:HOME_TEAM];
		}
		
		[subview setNeedsDisplay];
	}
}

- (void)playerTapped:(int)playerView
{
	[self playerInZone];
}

- (void)playerTouchesBegan:(CGPoint)hitPointTest
{	
	// TODO
	//
	// I really need to break out these hit tests into a seperate function that, when given the
	// hitTestPoint will return the appropriate play zone. Right now I repeat ALL of these tests
	// just below in the TouchesEnded method. This is highly subject to error!
	//
	// I should also make all the bounding coordinates constants!
	//
	
	if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		if ((hitPointTest.x > 10) && (hitPointTest.x < 470) && (hitPointTest.y > 25) && (hitPointTest.y < 65))
		{
			myStartingMoveZone = DEEP_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 235) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
		{
			myStartingMoveZone = MIDDLE_LEFT_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 245) && (hitPointTest.x < 470) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
		{
			myStartingMoveZone = MIDDLE_RIGHT_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 156) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			myStartingMoveZone = SHORT_LEFT_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 167) && (hitPointTest.x < 313) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			myStartingMoveZone = SHORT_MIDDLE_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 324) && (hitPointTest.x < 470) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			myStartingMoveZone = SHORT_RIGHT_PASSING_ZONE;
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 94) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			myStartingMoveZone = LEFT_SWEEP_RUSHING_LANE;
		}
		else if ((hitPointTest.x > 104) && (hitPointTest.x < 188) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			myStartingMoveZone = LEFT_OFFTACKLE_RUSHING_LANE;
		}
		else if ((hitPointTest.x > 198) && (hitPointTest.x < 282) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			myStartingMoveZone = LEFT_INSIDE_RUSHING_LANE;
		}
		else if ((hitPointTest.x > 292) && (hitPointTest.x < 376) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			myStartingMoveZone = RIGHT_OFFTACKLE_RUSHING_LANE;
		}
		else if ((hitPointTest.x > 386) && (hitPointTest.x < 470) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			myStartingMoveZone = RIGHT_SWEEP_RUSHING_LANE;
		}
		else
		{
			myStartingMoveZone = NO_POSITION_SELECTED;
		}
		
		// NSLog(@"Starting Move Zone: %d", myStartingMoveZone);
	}
}

- (void)playerTouchesMoved:(CGPoint)hitPointTest
{
	if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		if ((hitPointTest.x > 10) && (hitPointTest.x < 460) && (hitPointTest.y > 25) && (hitPointTest.y < 65))
		{
			if ([DefensiveFormationData getLongPassingZone] < 2)
			{
				[GameManager setHighlightedZone:DEEP_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 235) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
		{
			if ([DefensiveFormationData getMiddleLeftPassingZone] < 2)
			{
				[GameManager setHighlightedZone:MIDDLE_LEFT_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 245) && (hitPointTest.x < 470) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
		{
			if ([DefensiveFormationData getMiddleRightPassingZone] < 2)
			{
				[GameManager setHighlightedZone:MIDDLE_RIGHT_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 156) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			if ([DefensiveFormationData getShortLeftPassingZone] < 2)
			{
				[GameManager setHighlightedZone:SHORT_LEFT_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 167) && (hitPointTest.x < 313) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			if ([DefensiveFormationData getShortMiddlePassingZone] < 2)
			{
				[GameManager setHighlightedZone:SHORT_MIDDLE_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 324) && (hitPointTest.x < 470) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
		{
			if ([DefensiveFormationData getShortRightPassingZone] < 2)
			{
				[GameManager setHighlightedZone:SHORT_RIGHT_PASSING_ZONE];
			}
		}
		else if ((hitPointTest.x > 10) && (hitPointTest.x < 94) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			if ([DefensiveFormationData getSweepLeftRushingZone] < 2)
			{
				[GameManager setHighlightedZone:LEFT_SWEEP_RUSHING_LANE];
			}
		}
		else if ((hitPointTest.x > 104) && (hitPointTest.x < 188) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			if ([DefensiveFormationData getOffTackleLeftRushingZone] < 2)
			{
				[GameManager setHighlightedZone:LEFT_OFFTACKLE_RUSHING_LANE];
			}
		}
		else if ((hitPointTest.x > 198) && (hitPointTest.x < 282) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			if ([DefensiveFormationData getInsideRushingZone] < 2)
			{
				[GameManager setHighlightedZone:LEFT_INSIDE_RUSHING_LANE];
			}
		}
		else if ((hitPointTest.x > 292) && (hitPointTest.x < 376) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			if ([DefensiveFormationData getOffTackleRightRushingZone] < 2)
			{
				[GameManager setHighlightedZone:RIGHT_OFFTACKLE_RUSHING_LANE];
			}
		}
		else if ((hitPointTest.x > 386) && (hitPointTest.x < 470) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
		{
			if ([DefensiveFormationData getSweepRightRushingZone] < 2)
			{
				[GameManager setHighlightedZone:RIGHT_SWEEP_RUSHING_LANE];
			}
		}
		else
		{
			[GameManager setHighlightedZone:NO_POSITION_SELECTED];
		}
		
		[self.superview playerInZone];
	}
}

- (void)playerTouchesEnded:(CGPoint)hitPointTest
{
	bool playerMoved = FALSE;
	
	if ((hitPointTest.x > 10) && (hitPointTest.x < 470) && (hitPointTest.y > 25) && (hitPointTest.y < 65))
	{
		if ([DefensiveFormationData getLongPassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getLongPassingZone];
			currentCount++;
			[DefensiveFormationData setLongPassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 10) && (hitPointTest.x < 235) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
	{
		if ([DefensiveFormationData getMiddleLeftPassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getMiddleLeftPassingZone];
			currentCount++;
			[DefensiveFormationData setMiddleLeftPassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 245) && (hitPointTest.x < 470) && (hitPointTest.y > 70) && (hitPointTest.y < 110))
	{
		if ([DefensiveFormationData getMiddleRightPassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getMiddleRightPassingZone];
			currentCount++;
			[DefensiveFormationData setMiddleRightPassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 10) && (hitPointTest.x < 156) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
	{
		if ([DefensiveFormationData getShortLeftPassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getShortLeftPassingZone];
			currentCount++;
			[DefensiveFormationData setShortLeftPassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 167) && (hitPointTest.x < 313) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
	{
		if ([DefensiveFormationData getShortMiddlePassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getShortMiddlePassingZone];
			currentCount++;
			[DefensiveFormationData setShortMiddlePassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 324) && (hitPointTest.x < 470) && (hitPointTest.y > 115) && (hitPointTest.y < 155))
	{
		if ([DefensiveFormationData getShortRightPassingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getShortRightPassingZone];
			currentCount++;
			[DefensiveFormationData setShortRightPassingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 10) && (hitPointTest.x < 94) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
	{
		if ([DefensiveFormationData getSweepLeftRushingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getSweepLeftRushingZone];
			currentCount++;
			[DefensiveFormationData setSweepLeftRushingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 104) && (hitPointTest.x < 188) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
	{
		if ([DefensiveFormationData getOffTackleLeftRushingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getOffTackleLeftRushingZone];
			currentCount++;
			[DefensiveFormationData setOffTackleLeftRushingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 198) && (hitPointTest.x < 282) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
	{
		if ([DefensiveFormationData getInsideRushingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getInsideRushingZone];
			currentCount++;
			[DefensiveFormationData setInsideRushingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 292) && (hitPointTest.x < 376) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
	{
		if ([DefensiveFormationData getOffTackleRightRushingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getOffTackleRightRushingZone];
			currentCount++;
			[DefensiveFormationData setOffTackleRightRushingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	else if ((hitPointTest.x > 386) && (hitPointTest.x < 470) && (hitPointTest.y > 160) && (hitPointTest.y < 200))
	{
		if ([DefensiveFormationData getSweepRightRushingZone] < 2)
		{
			int currentCount = [DefensiveFormationData getSweepRightRushingZone];
			currentCount++;
			[DefensiveFormationData setSweepRightRushingZone:currentCount];
			playerMoved = TRUE;
		}
	}
	
	if (playerMoved)
	{
		// Set the current defensive formation to custom
		[GameManager setDefensiveFormation:CUSTOM_DEFENSIVE_FORMATION];
		
		if (myStartingMoveZone == LEFT_SWEEP_RUSHING_LANE)
		{
			int currentCount = [DefensiveFormationData getSweepLeftRushingZone];
			currentCount--;
			[DefensiveFormationData setSweepLeftRushingZone:currentCount];
		}
		else if (myStartingMoveZone == LEFT_OFFTACKLE_RUSHING_LANE)
		{
			int currentCount = [DefensiveFormationData getOffTackleLeftRushingZone];
			currentCount--;
			[DefensiveFormationData setOffTackleLeftRushingZone:currentCount];
		}
		else if (myStartingMoveZone == LEFT_INSIDE_RUSHING_LANE)
		{
			int currentCount = [DefensiveFormationData getInsideRushingZone];
			currentCount--;
			[DefensiveFormationData setInsideRushingZone:currentCount];
		}
		else if (myStartingMoveZone == RIGHT_OFFTACKLE_RUSHING_LANE)
		{
			int currentCount = [DefensiveFormationData getOffTackleRightRushingZone];
			currentCount--;
			[DefensiveFormationData setOffTackleRightRushingZone:currentCount];
		}
		else if (myStartingMoveZone == RIGHT_SWEEP_RUSHING_LANE)
		{
			int currentCount = [DefensiveFormationData getSweepRightRushingZone];
			currentCount--;
			[DefensiveFormationData setSweepRightRushingZone:currentCount];
		}
		else if (myStartingMoveZone == SHORT_LEFT_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getShortLeftPassingZone];
			currentCount--;
			[DefensiveFormationData setShortLeftPassingZone:currentCount];
		}
		else if (myStartingMoveZone == SHORT_MIDDLE_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getShortMiddlePassingZone];
			currentCount--;
			[DefensiveFormationData setShortMiddlePassingZone:currentCount];
		}
		else if (myStartingMoveZone == SHORT_RIGHT_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getShortRightPassingZone];
			currentCount--;
			[DefensiveFormationData setShortRightPassingZone:currentCount];
		}
		else if (myStartingMoveZone == MIDDLE_LEFT_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getMiddleLeftPassingZone];
			currentCount--;
			[DefensiveFormationData setMiddleLeftPassingZone:currentCount];
		}
		else if (myStartingMoveZone == MIDDLE_RIGHT_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getMiddleRightPassingZone];
			currentCount--;
			[DefensiveFormationData setMiddleRightPassingZone:currentCount];
		}
		else if (myStartingMoveZone == DEEP_PASSING_ZONE)
		{
			int currentCount = [DefensiveFormationData getLongPassingZone];
			currentCount--;
			[DefensiveFormationData setLongPassingZone:currentCount];
		}
		
		[self.superview changeDefensiveFormation];
	}
	
	[GameManager setHighlightedZone:NO_POSITION_SELECTED];
	
	[self setNeedsDisplay];
}

- (void)playerInZone
{
	[self.superview playerInZone];
}

- (void)changeDefensiveFormation
{
	if ([GameManager getDefensiveFormation] == FIVE_THREE_THREE_DEFENSIVE_FORMATION)
	{
		[DefensiveFormationData setSweepLeftRushingZone:1];
		[DefensiveFormationData setOffTackleLeftRushingZone:1];
		[DefensiveFormationData setInsideRushingZone:1];
		[DefensiveFormationData setOffTackleRightRushingZone:1];
		[DefensiveFormationData setSweepRightRushingZone:1];
		[DefensiveFormationData setShortLeftPassingZone:1];
		[DefensiveFormationData setShortMiddlePassingZone:1];
		[DefensiveFormationData setShortRightPassingZone:1];
		[DefensiveFormationData setMiddleLeftPassingZone:1];
		[DefensiveFormationData setMiddleRightPassingZone:1];
		[DefensiveFormationData setLongPassingZone:1];
	}
	else if ([GameManager getDefensiveFormation] == FOUR_THREE_FOUR_DEFENSIVE_FORMATION)
	{
		[DefensiveFormationData setSweepLeftRushingZone:0];
		[DefensiveFormationData setOffTackleLeftRushingZone:1];
		[DefensiveFormationData setInsideRushingZone:2];
		[DefensiveFormationData setOffTackleRightRushingZone:1];
		[DefensiveFormationData setSweepRightRushingZone:0];
		[DefensiveFormationData setShortLeftPassingZone:1];
		[DefensiveFormationData setShortMiddlePassingZone:1];
		[DefensiveFormationData setShortRightPassingZone:1];
		[DefensiveFormationData setMiddleLeftPassingZone:1];
		[DefensiveFormationData setMiddleRightPassingZone:1];
		[DefensiveFormationData setLongPassingZone:2];
	}
	else if ([GameManager getDefensiveFormation] == THREE_FOUR_FOUR_DEFENSIVE_FORMATION)
	{
		[DefensiveFormationData setSweepLeftRushingZone:0];
		[DefensiveFormationData setOffTackleLeftRushingZone:1];
		[DefensiveFormationData setInsideRushingZone:1];
		[DefensiveFormationData setOffTackleRightRushingZone:1];
		[DefensiveFormationData setSweepRightRushingZone:0];
		[DefensiveFormationData setShortLeftPassingZone:1];
		[DefensiveFormationData setShortMiddlePassingZone:2];
		[DefensiveFormationData setShortRightPassingZone:1];
		[DefensiveFormationData setMiddleLeftPassingZone:1];
		[DefensiveFormationData setMiddleRightPassingZone:1];
		[DefensiveFormationData setLongPassingZone:2];
	}
	
	[self setNeedsDisplay];
}

- (void)show
{
	if (!isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 0.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 1.0;
		
		[UIView commitAnimations];
		
		isVisable = TRUE;
	}
}

- (void)hide
{
	if (isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 1.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 0.0;
		
		[UIView commitAnimations];
		
		isVisable = FALSE;
	}
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event 
{
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		// Skip the PopUp subview unless it is visable
		if(subview.tag != 1 || [subview isVisable] == TRUE)
		{
			if (point.x >= subview.frame.origin.x && point.x <= subview.frame.origin.x + [subview frame].size.width)
			{
				if (point.y >= subview.frame.origin.y && point.y <= subview.frame. origin.y + [subview frame].size.height)
				{
					return YES;
				}
			}
		}
	}
	
	return NO;
}

- (void)dealloc
{
    [super dealloc];
}

@end
