
#import <GHUnitIOS/GHUnit.h>
#import "BigPlay.h"
#import "Defines.h"

@interface BigPlayTests : GHTestCase
{
}

@end

@implementation BigPlayTests

- (void)testBadQuarterbackPlayBadResultRoll1
{
    BigPlay *bigPlay = [[BigPlay alloc] initForTest:1 :1 :QUARTER_BACK];
    GHAssertEquals([bigPlay checkForAveragePlay], -3, nil);
}

- (void)testAverageTailbackPlayBadResultRoll1
{
    BigPlay *bigPlay = [[BigPlay alloc] initForTest:1 :1 :TAIL_BACK];
    GHAssertEquals([bigPlay checkForAveragePlay], -3, nil);
}

- (void)testAverageTailbackPlayAverageResultRoll50
{
    BigPlay *bigPlay = [[BigPlay alloc] initForTest:50 :50 :TAIL_BACK];
    GHAssertEquals([bigPlay checkForAveragePlay], 0, nil);
}

@end
