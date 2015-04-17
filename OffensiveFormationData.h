
#import <Foundation/Foundation.h>
#import "GameManager.h"

@interface OffensiveFormationData : NSObject
{    
}

+ (int)getLeftWideReceiver;
+ (void)setLeftWideReceiver:(int)count;
+ (int)getLeftSplitEnd;
+ (void)setLeftSplitEnd:(int)count;
+ (int)getLeftTightEnd;
+ (void)setLeftTightEnd:(int)count;
+ (int)getRightTightEnd;
+ (void)setRightTightEnd:(int)count;
+ (int)getRightSplitEnd;
+ (void)setRightSplitEnd:(int)count;
+ (int)getRightWideReceiver;
+ (void)setRightWideReceiver:(int)count;
+ (int)getQuarterBack;
+ (void)setQuarterBack:(int)count;
+ (int)getFullBack;
+ (void)setFullBack:(int)count;
+ (int)getLeftHalfBack;
+ (void)setLeftHalfBack:(int)count;
+ (int)getRightHalfBack;
+ (void)setRightHalfBack:(int)count;
+ (int)getTailBack;
+ (void)setTailBack:(int)count;

+ (int)getNumberOfRecieversAttackingZone;

@end
