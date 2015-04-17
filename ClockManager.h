//
//  ClockManager.h
//  Gridiron
//
//  Created by David Hardenbrook on 12/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameManager.h"
#import "RollManager.h"

#define UNKOWN_DURATION_CONTEXT 0
#define PLAY_DURATION_CONTEXT 1
#define HUDDLE_DURATION_CONTEXT 2

#define SECONDS_IN_TWO_MINUTE_WARNING 120

@interface ClockManager : NSObject
{
}

+ (int)getLastPlayDuration;
+ (void)reset;
+ (void)runPlayTimeOffClock;
+ (void)runHuddleTimeOffClock;
+ (void)RunElapsedTime;
+ (void)RunEndOfQuarter;
+ (void)RunTwoMinuteWarningDuringPlay;
+ (void)RunTwoMinuteWarningDuringHuddle;
+ (BOOL)IsTwoMinuteWarning;
+ (BOOL)IsEndOfQuarter;

@end
