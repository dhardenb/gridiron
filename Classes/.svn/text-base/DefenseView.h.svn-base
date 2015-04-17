
#import <UIKit/UIKit.h>
#import "DefenseViewTouchEvents.h"
#import "GameManager.h"
#import "PlayerMover.h"
#import "PlayerView.h"
#import "DefensiveFormationData.h"

@interface DefenseView : UIView <PlayerMover, DefenseViewTouchEvents>
{
	bool isVisable;
	
	int myPlayerCurrentlyMoving;
	
	int myStartingMoveZone;
	
	PlayerView *myLeftSweepLeftDefender;
	PlayerView *myLeftSweepMiddleDefender;
	PlayerView *myLeftSweepRightDefender;
	
	PlayerView *myLeftOffTackleLeftDefender;
	PlayerView *myLeftOffTackleMiddleDefender;
	PlayerView *myLeftOffTackleRightDefender;
	
	PlayerView *myLeftInsideLeftDefender;
	PlayerView *myLeftInsideMiddleDefender;
	PlayerView *myLeftInsideRightDefender;
	
	PlayerView *myRightOffTackleLeftDefender;
	PlayerView *myRightOffTackleMiddleDefender;
	PlayerView *myRightOffTackleRightDefender;
	
	PlayerView *myRightSweepLeftDefender;
	PlayerView *myRightSweepMiddleDefender;
	PlayerView *myRightSweepRightDefender;
	
	PlayerView *myShortLeftFlankLeftDefender;
	PlayerView *myShortLeftFlankMiddleDefender;
	PlayerView *myShortLeftFlankRightDefender;
	
	PlayerView *myShortMiddleFlankLeftDefender;
	PlayerView *myShortMiddleFlankMiddleDefender;
	PlayerView *myShortMiddleFlankRightDefender;
	
	PlayerView *myShortRightFlankLeftDefender;
	PlayerView *myShortRightFlankMiddleDefender;
	PlayerView *myShortRightFlankRightDefender;
	
	PlayerView *myMediumLeftSideLineLeftDefender;
	PlayerView *myMediumLeftSideLineMiddleDefender;
	PlayerView *myMediumLeftSideLineRightDefender;
	
	PlayerView *myMediumRightSideLineLeftDefender;
	PlayerView *myMediumRightSideLineMiddleDefender;
	PlayerView *myMediumRightSideLineRightDefender;
	
	PlayerView *myLongLeftDefender;
	PlayerView *myLongMiddleDefender;
	PlayerView *myLongRightDefender;
}

- (void)show;
- (void)hide;

- (int)getPlayerCurrentlyMoving;
- (void)setPlayerCurrentlyMoving:(int)playerPosition;

-(void)resetPlayerPositions;
-(void)resetVisablePlayers;
-(void)resetPlayersColor;

- (void)playerTapped:(int)playerView;
- (void)playerTouchesBegan:(CGPoint)hitPointTest;
- (void)playerTouchesMoved:(CGPoint)hitPointTest;
- (void)playerTouchesEnded:(CGPoint)hitPointTest;
- (void)playerInZone;
- (void)changeDefensiveFormation;

@end
