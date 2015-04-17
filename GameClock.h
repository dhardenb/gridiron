
#import <Foundation/Foundation.h>
#import "PlayClock.h"
#import "Quarter.h"

@interface GameClock : NSObject
{
    PlayClock *playClock;
    Quarter *quarter;
}

@end
