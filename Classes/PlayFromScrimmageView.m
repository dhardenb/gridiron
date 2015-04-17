//
//  PlayFromScrimmageView.m
//  Gridiron
//
//  Created by David Hardenbrook on 1/3/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PlayFromScrimmageView.h"

@implementation PlayFromScrimmageView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		////////////////////////////////////////
		// These are the composite subviews
		////////////////////////////////////////
		
		// Field
		myFieldView = [[FieldView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		[self addSubview:myFieldView];
		[myFieldView release];
		
		// Control Panel
		myControlPanelView = [[ControlPanelView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myControlPanelView.backgroundColor = [UIColor clearColor];
		[self addSubview:myControlPanelView];
		[myControlPanelView release];		
		
		// Scoreboard
		myHeadsUpDisplayView = [[HeadsUpDisplayView alloc] initWithFrame:CGRectMake(40, 0, 400, 25)];
		myHeadsUpDisplayView.backgroundColor = [UIColor clearColor];
		[self addSubview:myHeadsUpDisplayView];
		[myHeadsUpDisplayView release];
		
		// Offensive Plays
		myOffensivePlaysView = [[OffensivePlaysView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myOffensivePlaysView.backgroundColor = [UIColor clearColor];
		[self addSubview:myOffensivePlaysView];
		[myOffensivePlaysView release];
		
		// Offensive Players
		myOffenseView = [[OffenseView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myOffenseView.backgroundColor = [UIColor clearColor];
		[self addSubview:myOffenseView];
		[myOffenseView release];
		
		// Defensive Stance View
		myDefensiveStanceView = [[DefensiveStanceView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myDefensiveStanceView.backgroundColor = [UIColor clearColor];
		[self addSubview:myDefensiveStanceView];
		[myDefensiveStanceView release];
		
		// Defensive Players
		myDefenseView = [[DefenseView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myDefenseView.backgroundColor = [UIColor clearColor];
		[self addSubview:myDefenseView];
		[myDefenseView release];
		
		////////////////////////////////////////
		// These are the pop-up subviews
		////////////////////////////////////////
		
		// Main Menu View
		myMainMenuView = [[MainMenuView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myMainMenuView.backgroundColor = [UIColor clearColor];
		[self addSubview:myMainMenuView];
		[myMainMenuView release];
		
		// Game Menu View
		myGameMenuView = [[GameMenuView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myGameMenuView.backgroundColor = [UIColor clearColor];
		[self addSubview:myGameMenuView];
		[myGameMenuView release];
		
		// MainHelpView
		myMainHelpView = [[MainHelpView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myMainHelpView.backgroundColor = [UIColor blackColor];
		[self addSubview:myMainHelpView];
		[myMainHelpView release];
		
		// AboutView
		myAboutView = [[AboutView alloc] initWithFrame:CGRectMake(0, 0, 480, 320)];
		myAboutView.backgroundColor = [UIColor blackColor];
		[self addSubview:myAboutView];
		[myAboutView release];
		
		// GameSetupView
		myGameSetupView = [[GameSetupView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myGameSetupView.backgroundColor = [UIColor clearColor];
		[self addSubview:myGameSetupView];
		[myGameSetupView release];
		
		// CoinTossView
		myCoinTossView = [[CoinTossView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myCoinTossView.backgroundColor = [UIColor clearColor];
		[self addSubview:myCoinTossView];
		[myCoinTossView release];
		
		// Play Results View
		myPlayResultsView = [[PlayResultsView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myPlayResultsView.backgroundColor = [UIColor clearColor];
		[self addSubview:myPlayResultsView];
		[myPlayResultsView release];
		
		// Special Teams View
		mySpecialTeamsView = [[SpecialTeamsView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		mySpecialTeamsView.backgroundColor = [UIColor clearColor];
		[self addSubview:mySpecialTeamsView];
		[mySpecialTeamsView release];
		
		// Kickoff
		myKickoffView = [[KickoffView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myKickoffView.backgroundColor = [UIColor clearColor];
		[self addSubview:myKickoffView];
		[myKickoffView release];
		
		// Kick Return
		myKickoffReturnView = [[KickoffReturnView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myKickoffReturnView.backgroundColor = [UIColor clearColor];
		[self addSubview:myKickoffReturnView];
		[myKickoffReturnView release];
		
		// Punt
		myPuntView = [[PuntView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myPuntView.backgroundColor = [UIColor clearColor];
		[self addSubview:myPuntView];
		[myPuntView release];
		
		// Punt Return
		myPuntReturnView = [[PuntReturnView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myPuntReturnView.backgroundColor = [UIColor clearColor];
		[self addSubview:myPuntReturnView];
		[myPuntReturnView release];
		
		// Field Goal
		myFieldGoalView = [[FieldGoalView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myFieldGoalView.backgroundColor = [UIColor clearColor];
		[self addSubview:myFieldGoalView];
		[myFieldGoalView release];
		
		// Field Goal Block
		myFieldGoalBlockView = [[FieldGoalBlockView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myFieldGoalBlockView.backgroundColor = [UIColor clearColor];
		[self addSubview:myFieldGoalBlockView];
		[myFieldGoalBlockView release];
		
		// Point After
		myPointAfterView = [[PointAfterView alloc] initWithFrame:CGRectMake(40, 30, 400, 280)];
		myPointAfterView.backgroundColor = [UIColor clearColor];
		[self addSubview:myPointAfterView];
		[myPointAfterView release];
		
		// Point After Stop
		myPointAfterStopView = [[PointAfterStopView alloc] initWithFrame:CGRectMake(40, 20, 400, 280)];
		myPointAfterStopView.backgroundColor = [UIColor clearColor];
		[self addSubview:myPointAfterStopView];
		[myPointAfterStopView release];
	}
	
    return self;
}

- (void)drawRect:(CGRect)rect
{
	[GameManager updateLog];
	
	int currentGameState = [GameManager getGameState];
	
	switch (currentGameState)
	{
		case SPLASH_SCREEN_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView show];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myMainMenuView setNeedsDisplay];
			
			break;
		}
		case MAIN_MENU:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView show];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myMainMenuView setNeedsDisplay];
			
			break;
		}
		case GAME_MENU_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView show];
			[myOffenseView show];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView show];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myOffenseView setNeedsDisplay];
			[myGameMenuView setNeedsDisplay];
			
			break;
		}
		case MAIN_HELP_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView show];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myMainHelpView setNeedsDisplay];
			
			break;
		}
		case ABOUT_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];

			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView show];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myAboutView setNeedsDisplay];
			
			break;
		}
		case GAME_SETUP_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView show];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myGameSetupView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_SELECT_COIN_TOSS:
		case WAITING_TO_REVIEW_COIN_TOSS :
		case WAITING_TO_SELECT_KICK_OR_RECEIVE :
		case WAITING_TO_REVIEW_KICK_OR_RECEIVE :
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView show];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myCoinTossView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_PICK_OFFENSIVE_PLAYER:
		{
			[myFieldView show];
			[myControlPanelView show];
			[myHeadsUpDisplayView show];
			[myOffenseView show];
			[myOffensivePlaysView show];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myControlPanelView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myOffenseView setNeedsDisplay];
			[myOffensivePlaysView setNeedsDisplay];
			
			// [myMainHelpView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_PICK_ATTACK_ZONE:
		{
			[myFieldView show];
			[myControlPanelView show];
			[myHeadsUpDisplayView show];
			[myOffenseView show];
			[myOffensivePlaysView show];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myControlPanelView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myOffenseView setNeedsDisplay];
			[myOffensivePlaysView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_PICK_DEFENSIVE_STANCE:
		{
			[myFieldView show];
			[myControlPanelView show];
			[myHeadsUpDisplayView show];
			[myOffenseView show];
			[myOffensivePlaysView hide];
			[myDefenseView show];
			[myDefensiveStanceView show];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myControlPanelView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myOffenseView setNeedsDisplay];
			[myDefenseView setNeedsDisplay];
			[myDefensiveStanceView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_HIKE_BALL:
		{
			[myFieldView show];
			[myControlPanelView show];
			[myHeadsUpDisplayView show];
			[myOffenseView show];
			[myOffensivePlaysView show];
			[myDefenseView show];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myControlPanelView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myOffenseView setNeedsDisplay];
			[myOffensivePlaysView setNeedsDisplay];
			[myDefenseView setNeedsDisplay];
			
			break;
		}
		case ANIMATION_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];

			break;
		}
		case WAITING_TO_CLEAR_PLAY_RESULTS:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView show];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myPlayResultsView setNeedsDisplay];
			
			break;
		}
		case DISPLAY_EVENT_STATE:
		case VERIFY_NEW_GAME_STATE:
		case VERIFY_THE_DRIVE_MODE_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView show];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myPlayResultsView setNeedsDisplay];
			
			break;
		}
		case KICKOFF_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];

			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView show];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myKickoffView setNeedsDisplay];
			
			break;
		}
		case KICKOFF_RETURN_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView show];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myKickoffReturnView setNeedsDisplay];
			
			break;
		}
		case PUNT_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView show];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myPuntView setNeedsDisplay];
			
			break;
		}
		case PUNT_RETURN_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView show];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myPuntReturnView setNeedsDisplay];
			
			break;
		}
		case FIELD_GOAL_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView show];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myFieldGoalView setNeedsDisplay];
			
			break;
		}
		case FIELD_GOAL_BLOCK_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView show];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myFieldGoalBlockView setNeedsDisplay];
			
			break;
		}
		case POINT_AFTER_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView show];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView show];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[myHeadsUpDisplayView setNeedsDisplay];
			[myPointAfterView setNeedsDisplay];
			
			break;
		}
		case POINT_AFTER_STOP_STATE:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView hide];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView show];
			
			[myFieldView setNeedsDisplay];
			[myPointAfterStopView setNeedsDisplay];
			
			break;
		}
		case WAITING_TO_PICK_SPECIAL_TEAMS:
		{
			[myFieldView show];
			[myControlPanelView hide];
			[myHeadsUpDisplayView hide];
			[myOffenseView hide];
			[myOffensivePlaysView hide];
			[myDefenseView hide];
			[myDefensiveStanceView hide];
			
			[myMainMenuView hide];
			[myGameMenuView hide];
			[myMainHelpView hide];
			[myAboutView hide];
			[myGameSetupView hide];
			[myCoinTossView hide];
			[myPlayResultsView hide];
			
			[mySpecialTeamsView show];
			[myKickoffView hide];
			[myKickoffReturnView hide];
			[myPuntView hide];
			[myPuntReturnView hide];
			[myFieldGoalView hide];
			[myFieldGoalBlockView hide];
			[myPointAfterView hide];
			[myPointAfterStopView hide];
			
			[myFieldView setNeedsDisplay];
			[mySpecialTeamsView setNeedsDisplay];
			
			break;
		}
	}

}

- (void)playerTapped:(int)playerView
{
	if ([GameManager getOffensivePositionSelected] == playerView)
	{
		[GameManager setOffensivePositionSelected:NO_POSITION_SELECTED];
		[GameManager setAttackZoneSelected:NO_POSITION_SELECTED];
		[GameManager setGameState:WAITING_TO_PICK_OFFENSIVE_PLAYER];
	}
	else
	{
		[GameManager setOffensivePositionSelected:playerView];
		[GameManager setAttackZoneSelected:NO_POSITION_SELECTED];
		[GameManager setGameState:WAITING_TO_PICK_ATTACK_ZONE];
	}
	
	[self setNeedsDisplay];
}

- (void)attackZoneTapped:(int)zoneSelector
{
	[GameManager setAttackZoneSelected:zoneSelector];
	[GameManager setGameState:WAITING_TO_PICK_ATTACK_ZONE];
	
	[self setNeedsDisplay];
}

- (void)playerInZone
{
	[myDefensiveStanceView playerInZone];
}

- (void)changeDefensiveFormation
{
	[myControlPanelView setNeedsDisplay];
}

- (void)askQuestion:(int)promptButton
{
	if (promptButton == MAIN_MENU_BUTTON)
	{
		[TransitionManager moveToMainMenu];
	}
	else if (promptButton == GAME_MENU_BUTTON)
	{
		[TransitionManager moveToGameMenu];
	}
	else if (promptButton == MAIN_HELP_BUTTON)
	{
		[TransitionManager moveToHelp];
	}
	else if (promptButton == RETURN_FROM_MAIN_HELP_BUTTON)
	{
		if ([GameManager getPreviousGameState] == GAME_MENU_STATE)
		{
			[TransitionManager moveToGameMenu];
		}
		else
		{
			[TransitionManager moveToMainMenu];
		}
	}
	else if (promptButton == ABOUT_BUTTON)
	{
		[TransitionManager moveToAbout];
	}
	else if (promptButton == RETURN_FROM_ABOUT_BUTTON)
	{
		if ([GameManager getPreviousGameState] == GAME_MENU_STATE)
		{
			[TransitionManager moveToGameMenu];
		}
		else
		{
			[TransitionManager moveToMainMenu];
		}
	}
	else if (promptButton == PLAY_BUTTON)
	{
		[TransitionManager moveFromGameMenuToStartGameRouter];
	}
	else if (promptButton == RESUME_CURRENT_GAME_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else if (promptButton == START_NEW_GAME_BUTTON)
	{
		[TransitionManager verifyNewGame];
	}
	else if (promptButton == DONE_SETTING_UP_GAME_BUTTON)
	{
		[TransitionManager moveToWaitingToSelectCoinToss];
	}
	else if (promptButton == DONE_REVIEWING_KICK_OR_RECEIVE_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else if (promptButton == OFFENSE_READY_BUTTON)
	{
		[TransitionManager moveFromPickOffensivePlayToPickDefensiveStance];		
	}
	else if (promptButton == DEFENSE_READY_BUTTON)
	{
		[TransitionManager moveToHikeBall];
	}
	else if (promptButton == HIKE_BUTTON)
	{
		// [TransitionManager moveToAnimation];
		[TransitionManager moveToPlayResults];
	}
	else if (promptButton == ANIMATION_DONE_BUTTON)
	{
		[TransitionManager moveToPlayResults];
	}
	else if (promptButton == CLEAR_PLAY_RESULTS_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else if (promptButton == SPECIAL_TEAMS_BUTTON)
	{
		[TransitionManager moveToSpecialTeamsMenu];
	}
	else if (promptButton == PUNT_MENU_BUTTON)
	{
		[TransitionManager moveToPunt];
	}
	else if (promptButton == FIELD_GOAL_MENU_BUTTON)
	{
		[TransitionManager moveToFieldGoal];
	}
	else if (promptButton == CANCEL_SPECIAL_TEAMS_MENU_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}	
	else if (promptButton == KICKOFF_READY_BUTTON)
	{
		[TransitionManager moveToKickOffReturn];
	}
	else if (promptButton == KICKOFF_RETURN_READY_BUTTON)
	{
		[TransitionManager moveToHikeBall];
	}
	else if (promptButton == PUNT_READY_BUTTON)
	{
		[TransitionManager moveToPuntReturn];
	}
	else if (promptButton == PUNT_RETURN_READY_BUTTON)
	{
		[TransitionManager moveToHikeBall];
	}
	else if (promptButton == FIELD_GOAL_READY_BUTTON)
	{
		[TransitionManager moveToFieldGoalBlock];
	}
	else if (promptButton == FIELD_GOAL_BLOCK_READY_BUTTON)
	{
		[TransitionManager moveToHikeBall];
	}
	else if (promptButton == POINT_AFTER_READY_BUTTON)
	{
		[TransitionManager moveToExtraPointStop];
	}
	else if (promptButton == POINT_AFTER_STOP_READY_BUTTON)
	{
		[TransitionManager moveToHikeBall];
	}
	else if (promptButton == TIME_OUT_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else if (promptButton == SELECT_HEADS_BUTTON)
	{
		[TransitionManager moveToWaitingToReviewCoinToss];
	}
	else if (promptButton == SELECT_TAILS_BUTTON)
	{
		[TransitionManager moveToWaitingToReviewCoinToss];
	}
	else if (promptButton == DONE_REVIEWING_HEADS_OR_TAILS_BUTTON)
	{
		[TransitionManager moveToWaitingToSelectKickOrReceive];
	}
	else if (promptButton == SELECT_KICK_FIRST_BUTTON)
	{
		[TransitionManager moveToWaitingToReviewKickOrReceive];
	}
	else if (promptButton == SELECT_RECEIVE_FIRST_BUTTON)
	{
		[TransitionManager moveToWaitingToReviewKickOrReceive];
	}
	else if (promptButton == DONE_REVIEWING_KICK_OR_RECEIVE_BUTTON)
	{
		[TransitionManager moveToPlayResultsNavigator];
	}
	else if (promptButton == CANCEL_NEW_GAME_BUTTON)
	{
		[TransitionManager moveToPreviousGameState];
	}
	else if (promptButton == VERIFY_NEW_GAME_BUTTON)
	{
		if ([GameManager getGameState] == VERIFY_NEW_GAME_STATE)
		{
			[TransitionManager moveToGameSetup];
		}
		else
		{
			[TransitionManager StartTheDriveMode];
		}
		
	}
	else if (promptButton == THE_DRIVE_BUTTON)
	{
		[TransitionManager VerifyTheDriveMode];
	}
	else if (promptButton == FORMATION_BUTTON)
	{
		[TransitionManager ChangeDefensiveFormation];
	}
	
	[self setNeedsDisplay];
}

- (void)dealloc
{
    [super dealloc];
}

@end