//
//  DefensiveStanceView.h
//  Gridiron
//
//  Created by David Hardenbrook on 5/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameManager.h"
#import "PromptButton.h"
#import "ZoneView.h"

@interface DefensiveStanceView : UIView
{
	bool isVisable;
	
	// Rushing Zone Icons
	ZoneView *mySweepLeft;
	ZoneView *myOffTackleLeft;
	ZoneView *myOffGuardLeft;
	ZoneView *myOffCenterLeft;
	ZoneView *myOffCenterRight;
	ZoneView *myOffGuardRight;
	ZoneView *myOffTackleRight;
	ZoneView *mySweepRight;
	
	// Passing Zone Icons
	ZoneView *myShortLeftZone;
	ZoneView *myShortMiddleZone;
	ZoneView *myShortRightZone;
	ZoneView *myMediumLeftZone;
	ZoneView *myMediumRightZone;
	ZoneView *myLongZone;
}

- (void)playerInZone;
- (void)attackZoneTapped:(int)zoneSelector;

- (void)show;
- (void)hide;

@end
