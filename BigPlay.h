
#import <Foundation/Foundation.h>
#import "GameManager.h"
#import "RollManager.h"

@interface BigPlay : NSObject
{
	int bigPlayResult;
	int rollForOccurance;
	int rollForYardage;
	int offensivePositionSelected;
}

- (BigPlay *)init;
- (BigPlay *)initForTest
    :(int)testRollForOccurance
    :(int)testRollForYardage
    :(int)testOffensivePositionSelected;

- (int)checkForBadPlay;
- (int)checkForAveragePlay;
- (int)checkForGoodPlay;

- (void)findDefensiveBonus;
- (void)findOffensiveBonus;

- (void)findQuarterBackResults;
- (void)findFullBackResults;
- (void)findHalfBackResults;
- (void)findTailBackResults;

@end
