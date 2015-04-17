
#import <UIKit/UIKit.h>
#import "FootballView.h"
#import "FootballShadowView.h"
#import "GameManager.h"
#import "LocationSelectorView.h"
#import "LocationTapper.h"
#import "PlayerView.h"
#import "PlayerShadowView.h"
#import "ZoneSelector.h"
#import "OffensiveFormationData.h"

@interface OffenseView : UIView <LocationTapper>
{
	bool isVisable;
	
	int myLocationBeingTapped;
    
    float xSpot;
    float ySpot;
    
    float halfWidth;
    float playerLength;
    
    float playerOffSet;
    
    float xShadowOffSet;
    float yShadowOffSet;
	
	FootballView *myFootball;
    FootballShadowView *myFootballShadow;
	
	PlayerView *myLeftWideReceiver;
	PlayerView *myLeftSplitEnd;
	PlayerView *myLeftTightEnd;
	PlayerView *myLeftTackle;
	PlayerView *myLeftGaurd;
	PlayerView *myCenter;
	PlayerView *myRightGaurd;
	PlayerView *myRightTackle;
	PlayerView *myRightTightEnd;
	PlayerView *myRightSplitEnd;
	PlayerView *myRightWideReceiver;
	PlayerView *myQuarterBack;
	PlayerView *myFullBack;
	PlayerView *myLeftHalfBack;
	PlayerView *myRightHalfBack;
	PlayerView *myTailBack;
    
    PlayerShadowView *myQuarterBackShadow;
    PlayerShadowView *myFullBackShadow;
	
	ZoneSelector *myLeftWideReceiverTarget;
	ZoneSelector *myLeftSplitEndTarget;
	ZoneSelector *myLeftTightEndTarget;
	ZoneSelector *myRightTightEndTarget;
	ZoneSelector *myRightSplitEndTarget;
	ZoneSelector *myRightWideReceiverTarget;
	ZoneSelector *myQuarterBackTarget;
	ZoneSelector *myFullBackTarget;
	ZoneSelector *myLeftHalfBackTarget;
	ZoneSelector *myRightHalfBackTarget;
	ZoneSelector *myTailBackTarget;
	
	LocationSelectorView *myLeftWideReceiverLocation;
	LocationSelectorView *myLeftSplitEndLocation;
	LocationSelectorView *myLeftTightEndLocation;
	LocationSelectorView *myRightTightEndLocation;
	LocationSelectorView *myRightSplitEndLocation;
	LocationSelectorView *myRightWideReceiverLocation;
	LocationSelectorView *myQuarterBackLocation;
	LocationSelectorView *myFullBackLocation;
	LocationSelectorView *myLeftHalfBackLocation;
	LocationSelectorView *myRightHalfBackLocation;
	LocationSelectorView *myTailBackLocation;
}

- (CGRect)getLocationRectForPosition:(int)position;

- (void)show;
- (void)hide;

- (void)setupPlayerShadows;
- (void)setupPlayers;
- (void)setupLocationSelectors;
- (void)setupZoneSelectors;

- (void)locationTapped:(int)locationSelected;
- (int)getLocationBeingTapped;
- (void)setLocationBeingTapped:(int)location;

- (void)resetEachPlayersCurrentTeam;
- (void)movePlayersIntoCurrentFormation;
- (void)resetSelectorsAndTargets;

- (void)playerTapped:(int)playerView;

- (void)playerTouchesBegan:(int)position;
- (void)playerTouchesMoved:(CGPoint)movePoint :(CGPoint)hitPointTest;
- (void)playerTouchesEnded:(CGPoint)hitPointTest;

@end
