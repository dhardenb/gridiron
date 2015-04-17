
#import <Foundation/Foundation.h>
#import "BigPlay.h"
#import "Defines.h"
#import "GameManager.h"
#import "RollManager.h"
#import "OffensiveFormationData.h"
#import "DefensiveFormationData.h"

@interface RushingPlay : NSObject
{    
    int numberOfDefendersInZone;
    int numberOfBlockers;
	int rollForBasicPlayResult;
	int rollForYardage;
	int offensivePositionSelected;
	int attackZoneSelected;
    int finalPlayResult;
}

- (RushingPlay *)init;
- (RushingPlay *)initForTest :(int)rollForBasicPlayResultTest :(int)rollForYardageTest;
- (int)getResult;
- (void)setBasicPlayResult;
- (void)setFinalPlayResult;
- (void)setBasicPlayResultforLeftSweepRushingLane;
- (void)setBasicPlayResultforLeftOffTackleRushingLane;
- (void)setBasicPlayResultforInsideRushingLane;
- (void)setBasicPlayResultforRightOffTackleRushingLane;
- (void)setBasicPlayResultforRightSweepRushingLane;
- (int)getFullBackBlockingValue;
- (void)setBasicPlayResultForOneDefender;

@end
