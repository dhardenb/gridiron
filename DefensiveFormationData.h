
#import <Foundation/Foundation.h>
#import "GameManager.h"

@interface DefensiveFormationData : NSObject
{
}

+ (int)getSweepLeftRushingZone;
+ (void)setSweepLeftRushingZone:(int)count;
+ (int)getOffTackleLeftRushingZone;
+ (void)setOffTackleLeftRushingZone:(int)count;
+ (int)getInsideRushingZone;
+ (void)setInsideRushingZone:(int)count;
+ (int)getOffTackleRightRushingZone;
+ (void)setOffTackleRightRushingZone:(int)count;
+ (int)getSweepRightRushingZone;
+ (void)setSweepRightRushingZone:(int)count;
+ (int)getShortLeftPassingZone;
+ (void)setShortLeftPassingZone:(int)count;
+ (int)getShortMiddlePassingZone;
+ (void)setShortMiddlePassingZone:(int)count;
+ (int)getShortRightPassingZone;
+ (void)setShortRightPassingZone:(int)count;
+ (int)getMiddleLeftPassingZone;
+ (void)setMiddleLeftPassingZone:(int)count;
+ (int)getMiddleRightPassingZone;
+ (void)setMiddleRightPassingZone:(int)count;
+ (int)getLongPassingZone;
+ (void)setLongPassingZone:(int)count;

+ (int)getNumberOfDefendersInAttackZone;

@end
