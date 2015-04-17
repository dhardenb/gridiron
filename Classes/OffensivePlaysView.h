//
//  OffensivePlaysView.h
//  Gridiron
//
//  Created by David Hardenbrook on 5/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameManager.h"
#import "ZoneView.h"
#import "ZoneSelector.h"

@interface OffensivePlaysView : UIView
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
	
	// Rushing Zone Selectors
	ZoneSelector *mySweepLeftSelector;
	ZoneSelector *myOffTackleLeftSelector;
	ZoneSelector *myOffGuardLeftSelector;
	ZoneSelector *myOffCenterLeftSelector;
	ZoneSelector *myOffCenterRightSelector;
	ZoneSelector *myOffGuardRightSelector;
	ZoneSelector *myOffTackleRightSelector;
	ZoneSelector *mySweepRightSelector;
	
	// Passing Zone Selectors
	ZoneSelector *myShortLeftZoneSelector;
	ZoneSelector *myShortMiddleZoneSelector;
	ZoneSelector *myShortRightZoneSelector;
	ZoneSelector *myMediumLeftZoneSelector;
	ZoneSelector *myMediumRightZoneSelector;
	ZoneSelector *myLongZoneSelector;
}

- (void)show;
- (void)hide;

- (void)animateZoneSelectors;
- (void)attackZoneTapped:(int)zoneSelector;

@end
