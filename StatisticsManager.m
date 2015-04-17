
#import "GameManager.h"
#import "StatisticsManager.h"

@implementation StatisticsManager

- (id)init {	
    self = [super init];
	
    if (self)
	{
        [[NSNotificationCenter defaultCenter]
		 addObserver:self
		 selector:@selector(aRushingPlayWasCompleted:)
		 name:@"CompletedARushingPlay" object:nil];
    }
	
    return self;
	
}

- (void)aRushingPlayWasCompleted:(NSNotification *)notification
{
	NSLog(@"RushingPlayWasCompleted for %i", [GameManager getPlayResult]);
}

@end
