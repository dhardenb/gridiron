
#import <Foundation/Foundation.h>
#import "GameManager.h"
#import "ClockManager.h"
#import "AiManager.h"

@interface TransitionManager : NSObject
{
}

+ (void)moveToMainMenu;
+ (void)moveToGameMenu;
+ (void)moveToHelp;
+ (void)moveToAbout;
+ (void)moveFromGameMenuToStartGameRouter;
+ (void)verifyNewGame;
+ (void)moveToGameSetup;
+ (void)moveToPlayResultsNavigator;
+ (void)moveFromPlayResultsNavigatorToPickOffensivePlayer;
+ (void)moveFromPickOffensivePlayToPickDefensiveStance;
+ (void)moveToHikeBall;
+ (void)moveToAnimation;
+ (void)moveToPlayResults;
+ (void)moveToSpecialTeamsMenu;
+ (void)moveToKickOff;
+ (void)moveToKickOffReturn;
+ (void)moveToPunt;
+ (void)moveToPuntReturn;
+ (void)moveToFieldGoal;
+ (void)moveToFieldGoalBlock;
+ (void)moveToExtraPoint;
+ (void)moveToExtraPointStop;
+ (void)moveToEndOfFirstQuarter:(int)navFlag;
+ (void)moveToEndOfSecondQuarter;
+ (void)moveToEndOfThirdQuarter:(int)navFlag;
+ (void)moveToEndOfFourthQuarter;
+ (void)moveToTwoMinuteWarning;
+ (void)moveToEndOfGame;
+ (void)moveToOvertime;
+ (void)moveToEndOfOvertime;
+ (void)moveToTimeOut:(int)team;
+ (void)moveToEvent;
+ (void)moveToPreviousGameState;
+ (void)moveToWaitingToSelectCoinToss;
+ (void)moveToWaitingToReviewCoinToss;
+ (void)moveToWaitingToSelectKickOrReceive;
+ (void)moveToWaitingToReviewKickOrReceive;
+ (void)VerifyTheDriveMode;
+ (void)StartTheDriveMode;
+ (void)ChangeDefensiveFormation;

@end
