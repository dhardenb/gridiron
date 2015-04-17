//
//  HeadsUpDisplayView.h
//  Gridiron
//
//  Created by David Hardenbrook on 3/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Defines.h"
#import "GameManager.h"

@interface HeadsUpDisplayView : UIView
{
	bool isVisable;
	
	UILabel *myHomeName;
	UILabel *myHomeScore;
	UILabel *myHomePossession;
	
	UILabel *myAwayName;
	UILabel *myAwayScore;
	UILabel *myAwayPossession;
	
	UILabel *myDown;
	UILabel *myClock;
	UILabel *myQuarter;
}

- (void)show;
- (void)hide;

- (void)UpdateBackground;
- (void)UpdatePossessionIndicator;
- (void)UpdateScore;
- (void)UpdateTimeouts;
- (void)UpdateClock;
- (void)UpdateQuarter;
- (void)UpdateBallPosition;
- (NSString *)getBallPosition;
- (void)startGameClockAnimation;
- (void)stopGameClockAnimation;

@end
