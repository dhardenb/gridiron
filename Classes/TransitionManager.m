
// NOTES
//
// I should change this class to "EventManager"
//
// I think the transition method signitures should change to "moveTo" because it never really matters where you are coming from
// 
// I should add methods here that handle button push events so that they are not being handled in the views. For example:
// pressing rhe "Run Defense" button should really be passed through to here to be handled. Then the AiManager would do
// the same and all events like that would be handled consistently.

#import "TransitionManager.h"

@implementation TransitionManager

// This section handles event that help navogate through the
// Game Setup menus that come up before the main game loop starts

+ (void)moveToMainMenu
{
	[GameManager setGameState:MAIN_MENU];
}

+ (void)moveToGameMenu
{
	[GameManager setPreviousGameState:[GameManager getGameState]];
	[GameManager setGameState:GAME_MENU_STATE];
}

+ (void)moveToHelp
{
	int currentGameState = [GameManager getGameState];
	[GameManager setPreviousGameState:currentGameState];
	[GameManager setGameState:MAIN_HELP_STATE];
}

+ (void)moveToAbout
{
	int currentGameState = [GameManager getGameState];
	[GameManager setPreviousGameState:currentGameState];
	[GameManager setGameState:ABOUT_STATE];
}

+ (void)moveFromGameMenuToStartGameRouter
{
	[TransitionManager moveToGameSetup];
}

+ (void)verifyNewGame
{
	if ([GameManager getNavFlag] == END_OF_GAME_NAV_FLAG ||
		[GameManager getGameInProgress] == 0)
	{
		[TransitionManager moveToGameSetup];
	}
	else
	{
		// We need to remembwe whether we came from the Main Menu or the
		// game menu
		int currentGameState = [GameManager getGameState];
		[GameManager setPreviousGameState:currentGameState];
		
		[GameManager runVerifyNewGame];
		[GameManager setGameState:VERIFY_NEW_GAME_STATE];
	}
}

+ (void)moveToGameSetup
{
	[GameManager resetGameState];
	[GameManager setGameState:GAME_SETUP_STATE];
}

// This method is imprtant because it sits at the beginning of
// the main game loop and routers traffic appropriatly.
//
// There are three basicly three branches that the main game loop
// cna follow:
//
// 1) A new play from scrimmage
// 2) An event message: end of quarters, halftime, end of game,
//    td scored, fg scored, turnover, etc...
// 3) Line up for a kickoff

+ (void)moveToPlayResultsNavigator
{		
	if ([GameManager getNavFlag] == NO_NAV_FLAG)
	{
		[TransitionManager moveFromPlayResultsNavigatorToPickOffensivePlayer];
	}
	else if ([GameManager getNavFlag] == NEED_KICKOFF_NAV_FLAG)
	{
		[TransitionManager moveToKickOff];
	}
	else if ([GameManager getNavFlag] == EXTRA_POINT_NAV_FLAG)
	{
		[TransitionManager moveToExtraPoint];
	}
	else if ([GameManager getNavFlag] == TWO_MINUTE_WARNING_NAV_FLAG)
	{
		[TransitionManager moveToTwoMinuteWarning];
	}
	else if ([GameManager getNavFlag] == END_OF_FIRST_QUARTER_NAV_FLAG)
	{
		[TransitionManager moveToEndOfFirstQuarter:NO_NAV_FLAG];
	}
    else if ([GameManager getNavFlag] == END_OF_FIRST_QUARTER_NEED_KICK_OFF_NAV_FLAG)
	{
		[TransitionManager moveToEndOfFirstQuarter:NEED_KICKOFF_NAV_FLAG];
	}
	else if ([GameManager getNavFlag] == END_OF_SECOND_QUARTER_NAV_FLAG)
	{
		[TransitionManager moveToEndOfSecondQuarter];
	}
	else if ([GameManager getNavFlag] == END_OF_THIRD_QUARTER_NAV_FLAG)
	{
		[TransitionManager moveToEndOfThirdQuarter:NO_NAV_FLAG];
	}
    else if ([GameManager getNavFlag] == END_OF_THIRD_QUARTER_NEED_KICK_OFF_NAV_FLAG)
	{
		[TransitionManager moveToEndOfThirdQuarter:NEED_KICKOFF_NAV_FLAG];
	}
	else if ([GameManager getNavFlag] == END_OF_FOURTH_QUARTER_NAV_FLAG)
	{
		[TransitionManager moveToEndOfFourthQuarter];
	}
	else if ([GameManager getNavFlag] == END_OF_GAME_NAV_FLAG)
	{
		[TransitionManager moveToEndOfGame];
	}
	else if ([GameManager getNavFlag] == OVERTIME_NAV_FLAG)
	{
		[TransitionManager moveToOvertime];
	}
	else if ([GameManager getNavFlag] == END_OF_OVERTIME_NAV_FLAG)
	{
		[TransitionManager moveToEndOfOvertime];
	}
	else if ([GameManager getNavFlag] == HOME_TEAM_TIME_OUT_NAV_FLAG)
	{
		[TransitionManager moveToTimeOut:HOME_TEAM];
	}
	else if ([GameManager getNavFlag] == AWAY_TEAM_TIME_OUT_NAV_FLAG)
	{
		[TransitionManager moveToTimeOut:AWAY_TEAM];
	}
}

// This section contains events in the play from scrimmage branch

+ (void)moveFromPlayResultsNavigatorToPickOffensivePlayer
{	
	if ([GameManager isOffenseHuman])
	{
		[GameManager setOffensivePositionSelected:NO_POSITION_SELECTED];
		[GameManager setAttackZoneSelected:NO_POSITION_SELECTED];
		[GameManager setGameState:WAITING_TO_PICK_OFFENSIVE_PLAYER];
		return;
	}
	
	if ([GameManager isOffenseHuman] == FALSE)
	{
		[AiManager selectOffensivePlayerAndPlay];
		[TransitionManager moveFromPickOffensivePlayToPickDefensiveStance];
	}
}

+ (void)moveFromPickOffensivePlayToPickDefensiveStance
{
	[GameManager setDefensiveFormation:FIVE_THREE_THREE_DEFENSIVE_FORMATION];
	[GameManager setDefensiveStanceSelected:BALANCED_DEFENSIVE_STANCE];
	
	if ([GameManager isDefenseHuman])
	{
		if ([GameManager getOffensivePositionSelected] == KICKER)
		{
			[TransitionManager moveToFieldGoal];
			return;
		}
		else if ([GameManager getOffensivePositionSelected] == PUNTER)
		{
			[TransitionManager moveToPunt];
			return;
		}
		
		[GameManager setDefensiveStanceSelected:BALANCED_DEFENSIVE_STANCE];
		[GameManager setGameState:WAITING_TO_PICK_DEFENSIVE_STANCE];
		
		return;
	}
	else
	{
		[AiManager selectDefensiveFormation];
        [GameManager setDefensiveStanceSelected:BALANCED_DEFENSIVE_STANCE];
		[TransitionManager moveToHikeBall];
	}
}

+ (void)moveToHikeBall
{
	[ClockManager runHuddleTimeOffClock];
	
	// Check to see if we hit the two minute warning or if the time in
	// the quarter expired while we were in the huddle.
	//
	// Any NavFlag over 2 will be something other than a play from scrimmage, kick off, or extra point attempt
	if ([GameManager getNavFlag] > 2)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	// If not, than proceed to hike the ball!
	else
	{
		if (([GameManager isOffenseHuman] == NO) && ([GameManager isDefenseHuman] == NO))
		{
			[TransitionManager moveToPlayResults];
		}
		else
		{
			[GameManager setGameState:WAITING_TO_HIKE_BALL];
		}
	}
}

+ (void)moveToAnimation
{
	[GameManager runPlay];
	
	[GameManager setGameState:ANIMATION_STATE];
}

+ (void)moveToPlayResults
{
	// I ended up running the play here instead of the moveToPlayResults method because
	// sometime that method gets run back to back and the plays were getting run twice.
	// For example, at the end of a quarter, plays would get run twice because I call
	// the play results method twice. I do this so I can display an extra message informing
	// the players that the quarter has ended. It may be that I should just have a new view 
	// and a new state for these extra messages...
	[GameManager runPlay];
	
	if (([GameManager isOffenseHuman] == NO) && ([GameManager isDefenseHuman] == NO))
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else
	{
		[GameManager setGameState:WAITING_TO_CLEAR_PLAY_RESULTS];
	}
}

/////////////////////
// Special Teams
/////////////////////

+ (void)moveToSpecialTeamsMenu
{
	[GameManager setGameState:WAITING_TO_PICK_SPECIAL_TEAMS];
}

+ (void)moveToKickOff
{
	// NOTE - I don't get this...
	[GameManager setGameInProgress:TRUE];
	
	[GameManager setOffensivePositionSelected:KICKER];
	[GameManager setAttackZoneSelected:NORMAL_KICK_OFF];
	[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
	
	[GameManager setLineOfScrimmage:70];
	
	if ([GameManager isOffenseHuman] == TRUE)
	{
		// Set Default Kick Off
		[GameManager setOffensivePositionSelected:KICKER];
		[GameManager setAttackZoneSelected:NORMAL_KICK_OFF];
		
		// Set Game State
		[GameManager setGameState:KICKOFF_STATE];
	}
	else
	{
		[AiManager selectKickOff];
		
		// Transition to KickOff Return
		[TransitionManager moveToKickOffReturn];
	}
}

+ (void)moveToKickOffReturn
{
	// Reset Kickoff status so we don't get stuck in an infinite loop
	[GameManager setNavFlag:0];
	
	if ([GameManager isDefenseHuman] == TRUE)
	{
		// Set Default Kick Return
		[GameManager setDefensiveStanceSelected:NORMAL_KICK_OFF_RETURN];
		
		// Set Game State
		[GameManager setGameState:KICKOFF_RETURN_STATE];
	}
	else
	{
		[AiManager selectKickOffReturn];
		
		// Transition to hike ball
		[TransitionManager moveToHikeBall];
	}
}

+ (void)moveToPunt
{
	// For version 1 there are not going to be any special teams options. So just
	// set the defaults and advance to the hike screen.
	[GameManager setOffensivePositionSelected:PUNTER];
	[GameManager setAttackZoneSelected:NORMAL_PUNT];
	[GameManager setDefensiveStanceSelected:NORMAL_PUNT_RETURN];
	
	[TransitionManager moveToHikeBall];
	
	/*if ([GameManager isOffenseHuman])
	{
		// Reset Punt Defauls
		[GameManager setOffensivePositionSelected:PUNTER];
		[GameManager setAttackZoneSelected:NORMAL_PUNT];
		
		// Set Game State
		[GameManager setGameState:PUNT_STATE];
		
		return;
	}
	
	if ([GameManager isOffenseHuman] == FALSE)
	{
		[AiManager selectPunt];

		// Transition to Punt Return
		[TransitionManager moveToPuntReturn];
	}*/
}

+ (void)moveToPuntReturn
{
	if ([GameManager isDefenseHuman])
	{
		// Reset Punt Return Defaults
		[GameManager setDefensiveStanceSelected:NORMAL_PUNT_RETURN];
		
		// Set Game State
		[GameManager setGameState:PUNT_RETURN_STATE];
		
		return;
	}
	
	if ([GameManager isDefenseHuman] == FALSE)
	{
		[AiManager selectPuntReturn];
		
		// Transition to hike ball
		[TransitionManager moveToHikeBall];
	}
}

+ (void)moveToFieldGoal
{
	// For version 1 there are not going to be any special teams options. So just
	// set the defaults and advance to the hike screen.
	[GameManager setOffensivePositionSelected:KICKER];
	[GameManager setAttackZoneSelected:NORMAL_FIELD_GOAL];
	[GameManager setDefensiveStanceSelected:FIELD_GOAL_BLOCK];
	
	[TransitionManager moveToHikeBall];
	
	/*if ([GameManager isOffenseHuman])
	{
		// Reset Punt Defaults
		[GameManager setOffensivePositionSelected:KICKER];
		[GameManager setAttackZoneSelected:NORMAL_FIELD_GOAL];
		
		// Set Game State
		[GameManager setGameState:FIELD_GOAL_STATE];
		
		return;
	}
	
	if ([GameManager isOffenseHuman] == FALSE)
	{
		[AiManager selectFieldGoal];
		
		// Transition to KickOff Return
		[TransitionManager moveToFieldGoalBlock];
	}*/
}

+ (void)moveToFieldGoalBlock
{
	if ([GameManager isDefenseHuman])
	{
		[GameManager setDefensiveStanceSelected:FIELD_GOAL_BLOCK];
		[GameManager setGameState:FIELD_GOAL_BLOCK_STATE];
		return;
	}
	
	if ([GameManager isDefenseHuman] == FALSE)
	{
		[GameManager setDefensiveStanceSelected:FIELD_GOAL_BLOCK];
		[TransitionManager moveToHikeBall];
	}
}
		
+ (void)moveToExtraPoint
{	
	[GameManager setLineOfScrimmage:2];
	
	if ([GameManager isOffenseHuman])
	{
		[GameManager setOffensivePositionSelected:KICKER];
		[GameManager setAttackZoneSelected:EXTRA_POINT];
		[GameManager setDefensiveStanceSelected:EXTRA_POINT_BLOCK];
		
		// Set Game State
		[GameManager setGameState:POINT_AFTER_STATE];
	}
	else
	{
		[AiManager selectExtraPointType];
		
		// Transition to Extra Point Stop
		[TransitionManager moveToExtraPointStop];
	}
}
		
+ (void)moveToExtraPointStop
{
	if ([GameManager getAttackZoneSelected] == EXTRA_POINT)
	{
		[TransitionManager moveToHikeBall];
	}
	else
	{
		[GameManager setAttemptingTwoPoints:1];
		[TransitionManager moveFromPlayResultsNavigatorToPickOffensivePlayer];
	}
}

///////////////////
// Clock Events
//////////////////

+ (void)moveToEndOfFirstQuarter:(int)navFlag
{
	[GameManager runEndOfFirstQuarter:navFlag];
	[TransitionManager moveToEvent];
}

+ (void)moveToEndOfSecondQuarter
{
	[GameManager runEndOfSecondQuarter];
	[TransitionManager moveToEvent];
}

+ (void)moveToEndOfThirdQuarter:(int)navFlag
{
	[GameManager runEndOfThirdQuarter:navFlag];
	[TransitionManager moveToEvent];
}

+ (void)moveToEndOfFourthQuarter
{
	[GameManager runEndOfFourthQuarter];
	[TransitionManager moveToEvent];
}

+ (void)moveToTwoMinuteWarning
{
	[GameManager runTwoMinuteWarning];
	[TransitionManager moveToEvent];
}

+ (void)moveToEndOfGame
{
	[TransitionManager moveToMainMenu];
}

+ (void)moveToOvertime
{
	[GameManager prepareForOvertime];
	[TransitionManager moveToWaitingToSelectCoinToss];
}

+ (void)moveToEndOfOvertime
{
	[GameManager runEndOfOvertime];
	[TransitionManager moveToEvent];
}

+ (void)moveToTimeOut:(int)team
{
	[GameManager runTimeOut:team];
	[TransitionManager moveToEvent];
}

+ (void)moveToEvent
{
	[GameManager setGameState:DISPLAY_EVENT_STATE];
}

+ (void)moveToPreviousGameState
{
	int previousGameState = [GameManager getPreviousGameState];
	[GameManager setGameState:previousGameState];
}

// Coint Toss Transitions
+ (void)moveToWaitingToSelectCoinToss
{
	if ([GameManager getAwayTemType] == HUMAN_COACH)
	{
		[GameManager setGameState:WAITING_TO_SELECT_COIN_TOSS];
	}
	else
	{
		int flip = [RollManager rollOneHundredSidedDice];
		
		if (flip <= 50)
		{
			[GameManager setWonCoinToss:AWAY_TEAM];
		}
		else
		{
			[GameManager setWonCoinToss:HOME_TEAM];
		}
		
		[TransitionManager moveToWaitingToReviewCoinToss];
	}
}

+ (void)moveToWaitingToReviewCoinToss
{
	[GameManager setGameState:WAITING_TO_REVIEW_COIN_TOSS];
}

+ (void)moveToWaitingToSelectKickOrReceive
{
	int coinTossWinner = [GameManager getWonCoinToss];
	
	if (coinTossWinner == HOME_TEAM)
	{
		if ([GameManager getHomeTemType] == HUMAN_COACH)
		{
			[GameManager setGameState:WAITING_TO_SELECT_KICK_OR_RECEIVE];
		}
		else
		{
			[GameManager setPossession:AWAY_TEAM];
			[GameManager setKickedFirst:AWAY_TEAM];
			[TransitionManager moveToWaitingToReviewKickOrReceive];
		}
	}
	else // Winner is Away Team
	{
		if ([GameManager getAwayTemType] == HUMAN_COACH)
		{
			[GameManager setGameState:WAITING_TO_SELECT_KICK_OR_RECEIVE];
		}
		else
		{
			[GameManager setPossession:HOME_TEAM];
			[GameManager setKickedFirst:HOME_TEAM];
			[TransitionManager moveToWaitingToReviewKickOrReceive];
		}
	}
}

+ (void)moveToWaitingToReviewKickOrReceive
{
	[GameManager setGameState:WAITING_TO_REVIEW_KICK_OR_RECEIVE];
}

// Addition Modes

+ (void)VerifyTheDriveMode
{
	if ([GameManager getNavFlag] == END_OF_GAME_NAV_FLAG ||
		[GameManager getGameInProgress] == 0)
	{
		[TransitionManager StartTheDriveMode];
	}
	else
	{
		// Remember where we came from
		int currentGameState = [GameManager getGameState];
		[GameManager setPreviousGameState:currentGameState];
		
		[GameManager runVerifyNewGame];
		[GameManager setGameState:VERIFY_THE_DRIVE_MODE_STATE];
	}
}

+ (void)StartTheDriveMode
{
	[GameManager setupGameForTheDriveMode];
}

+ (void)ChangeDefensiveFormation
{
	[GameManager incrementDefensiveFormation];
}

@end
