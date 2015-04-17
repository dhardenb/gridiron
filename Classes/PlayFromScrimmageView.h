
#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "FieldView.h"
#import "Defines.h"
#import "HeadsUpDisplayView.h"
#import "DefensiveStanceView.h"
#import "MainHelpView.h"
#import "AboutView.h"
#import "GameSetupView.h"
#import "KickoffView.h"
#import "KickoffReturnView.h"
#import "PuntView.h"
#import "PuntReturnView.h"
#import "FieldGoalView.h"
#import "FieldGoalBlockView.h"
#import "PointAfterView.h"
#import "PointAfterStopView.h"
#import "MainMenuView.h"
#import "PlayResultsView.h"
#import "DefenseView.h"
#import "OffenseView.h"
#import "OffensivePlaysView.h"
#import "ControlPanelView.h"
#import "SpecialTeamsView.h"
#import "TransitionManager.h"
#import "GameMenuView.h"
#import "CoinTossView.h"

@interface PlayFromScrimmageView : UIView <AskQuestions>
{	
	FieldView *myFieldView;
	HeadsUpDisplayView *myHeadsUpDisplayView;
	MainMenuView *myMainMenuView;
	DefensiveStanceView *myDefensiveStanceView;
	MainHelpView *myMainHelpView;
	AboutView *myAboutView;
	GameSetupView *myGameSetupView;
	KickoffView *myKickoffView;
	KickoffReturnView *myKickoffReturnView;
	PuntView *myPuntView;
	PuntReturnView *myPuntReturnView;
	FieldGoalView	*myFieldGoalView;
	FieldGoalBlockView *myFieldGoalBlockView;
	PointAfterView *myPointAfterView;
	PointAfterStopView	*myPointAfterStopView;
	PlayResultsView *myPlayResultsView;
	DefenseView *myDefenseView;
	OffenseView *myOffenseView;
	OffensivePlaysView *myOffensivePlaysView;
	ControlPanelView *myControlPanelView;
	SpecialTeamsView *mySpecialTeamsView;
	GameMenuView *myGameMenuView;
	CoinTossView *myCoinTossView;
}

- (void)playerTapped:(int)playerView;
- (void)attackZoneTapped:(int)zoneSelector;
- (void)playerInZone;
- (void)changeDefensiveFormation;
- (void)askQuestion:(int)promptButton;

@end
