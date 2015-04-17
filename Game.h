
#import <Foundation/Foundation.h>
#import "FieldPosition.h"
#import "GameClock.h"
#import "GameScore.h"
#import "GameTimeouts.h"

@interface Game : NSObject
{
    FieldPosition *fieldPosition;
    GameClock *gameClock;
    GameScore *gameScore;
    GameTimeouts *gameTimeouts;
}

@end
