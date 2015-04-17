
#import "RushingPlay.h"

@implementation RushingPlay

- (RushingPlay *)init {
	
	if ((self = [super init])) {
        
        numberOfDefendersInZone = [DefensiveFormationData getSweepLeftRushingZone];
        numberOfBlockers = 0;
        rollForBasicPlayResult = [RollManager rollOneHundredSidedDice];
        rollForYardage = [RollManager rollOneHundredSidedDice];
        offensivePositionSelected = [GameManager getOffensivePositionSelected];
        attackZoneSelected = [GameManager getAttackZoneSelected];
        finalPlayResult = 0;
    }
	
	return self;
}

- (RushingPlay *)initForTest :(int)rollForBasicPlayResultTest :(int)rollForYardageTest {
	
	if ((self = [super init])) {
		rollForBasicPlayResult = rollForBasicPlayResultTest;
		rollForYardage = rollForYardageTest;
	}
	
	return self;
}

- (int)getResult {
    [self setBasicPlayResult];
    [self setFinalPlayResult];
	return finalPlayResult;
}

- (void)setBasicPlayResult {
    switch (attackZoneSelected) {
        case LEFT_SWEEP_RUSHING_LANE :
            [self setBasicPlayResultforLeftSweepRushingLane];
            break;
        case LEFT_OFFTACKLE_RUSHING_LANE :
            [self setBasicPlayResultforLeftOffTackleRushingLane];
            break;
        case LEFT_INSIDE_RUSHING_LANE :
            [self setBasicPlayResultforInsideRushingLane];
            break;
        case RIGHT_OFFTACKLE_RUSHING_LANE :
            [self setBasicPlayResultforRightOffTackleRushingLane];
            break;
        case RIGHT_SWEEP_RUSHING_LANE :
            [self setBasicPlayResultforRightSweepRushingLane];
            break;
    }
}

- (void)setFinalPlayResult {
	
	BigPlay *bigPlay = [[BigPlay alloc] init];
    
    switch ([GameManager getBasicPlayResult]) {
        case BAD_PLAY_RESULT:
            if (rollForYardage <= 33)
                finalPlayResult = -1;
            else if (rollForYardage <= 67)
                finalPlayResult = 0;
            else
                finalPlayResult = 1;
            finalPlayResult += [bigPlay checkForBadPlay];
            break;
        case AVERAGE_PLAY_RESULT:
            if (rollForYardage <= 33)
                finalPlayResult = 2;
            else if (rollForYardage <= 67)
                finalPlayResult = 3;
            else
                finalPlayResult = 4;
            finalPlayResult += [bigPlay checkForAveragePlay];
            break;
        case GOOD_PLAY_RESULT:
            if (rollForYardage <= 33)
                finalPlayResult = 5;
            else if (rollForYardage <= 67)
                finalPlayResult = 6;
            else
                finalPlayResult = 7;
            finalPlayResult += [bigPlay checkForGoodPlay];
            break;
        default:
            finalPlayResult = 0;
            break;
    }
}

- (void)setBasicPlayResultforLeftSweepRushingLane {
    numberOfDefendersInZone = [DefensiveFormationData getSweepLeftRushingZone];
    
    switch (numberOfDefendersInZone) {
        case 0 :
            [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            break;
        case 1 :
            numberOfBlockers += [OffensiveFormationData getLeftWideReceiver];
            numberOfBlockers += [OffensiveFormationData getLeftSplitEnd];
            numberOfBlockers += [OffensiveFormationData getLeftTightEnd];
            numberOfBlockers += [self getFullBackBlockingValue];
            [self setBasicPlayResultForOneDefender];
            break;
        case 2 :
            [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            break;
    }
}

- (void)setBasicPlayResultforLeftOffTackleRushingLane {
    numberOfDefendersInZone = [DefensiveFormationData getOffTackleLeftRushingZone];
    
    switch (numberOfDefendersInZone) {
        case 0 :
            [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            break;
        case 1 :
            numberOfBlockers += [OffensiveFormationData getLeftTightEnd];
            numberOfBlockers += 2; // Left Tackle and Gaurd
            [self setBasicPlayResultForOneDefender];
            break;
        case 2 :
            [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            break;
    }
}

- (void)setBasicPlayResultforInsideRushingLane {
    numberOfDefendersInZone = [DefensiveFormationData getInsideRushingZone];
    
    switch (numberOfDefendersInZone) {
        case 0 :
            [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            break;
        case 1 :
            numberOfBlockers += 3; // Left Tackle, Center, Right Gaurd
            [self setBasicPlayResultForOneDefender];
            break;
        case 2 :
            [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            break;
    }
}

- (void)setBasicPlayResultforRightOffTackleRushingLane {
    numberOfDefendersInZone = [DefensiveFormationData getOffTackleRightRushingZone];
    
    switch (numberOfDefendersInZone) {
        case 0 :
            [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            break;
        case 1 :
            numberOfBlockers += [OffensiveFormationData getRightTightEnd];
            numberOfBlockers += 2; // Right Tackle and Gaurd
            [self setBasicPlayResultForOneDefender];
            break;
        case 2 :
            [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            break;
    }
}

- (void)setBasicPlayResultforRightSweepRushingLane {
    numberOfDefendersInZone = [DefensiveFormationData getSweepRightRushingZone];
    
    switch (numberOfDefendersInZone) {
        case 0 :
            [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            break;
        case 1 :
            numberOfBlockers += [OffensiveFormationData getRightWideReceiver];
            numberOfBlockers += [OffensiveFormationData getRightSplitEnd];
            numberOfBlockers += [OffensiveFormationData getRightTightEnd];
            numberOfBlockers += [self getFullBackBlockingValue];
            [self setBasicPlayResultForOneDefender];
            break;
        case 2 :
            [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            break;
    }
}

- (int) getFullBackBlockingValue {
    if (offensivePositionSelected == FULL_BACK)
        return 0;
    else
        return [OffensiveFormationData getFullBack];
}

- (void)setBasicPlayResultForOneDefender {
    switch (numberOfBlockers) {
        case 0 :
            if (rollForBasicPlayResult <= 66)
                [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            else
                [GameManager setBasicPlayResult:AVERAGE_PLAY_RESULT];
            break;
        case 1 :
            if (rollForBasicPlayResult <= 33)
                [GameManager setBasicPlayResult:BAD_PLAY_RESULT];
            else
                [GameManager setBasicPlayResult:AVERAGE_PLAY_RESULT];
            break;
        case 2 :
            [GameManager setBasicPlayResult:AVERAGE_PLAY_RESULT];
            break;
        case 3 :
            if (rollForBasicPlayResult <= 33)
                [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            else
                [GameManager setBasicPlayResult:AVERAGE_PLAY_RESULT];
            break;
        case 4 :
            if (rollForBasicPlayResult <= 66)
                [GameManager setBasicPlayResult:GOOD_PLAY_RESULT];
            else
                [GameManager setBasicPlayResult:AVERAGE_PLAY_RESULT];
            break;
    }
}

@end
