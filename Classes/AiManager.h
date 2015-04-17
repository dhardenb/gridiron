
#import <Foundation/Foundation.h>
#import "GameManager.h"
#import "OffensiveFormationData.h"
#import "DefensiveFormationData.h"

@interface AiManager : NSObject
{
}

+ (void)selectOffensiveFormation;
+ (void)selectOffensivePlayerAndPlay;
+ (void)selectDefensiveFormation;
+ (void)selectKickOff;
+ (void)selectKickOffReturn;
+ (void)selectPunt;
+ (void)selectPuntReturn;
+ (void)selectExtraPointType;
+ (void)selectExtraPointStopType;
+ (void)selectFieldGoal;

@end
