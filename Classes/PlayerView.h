
#import <UIKit/UIKit.h>
#import "DefenseViewTouchEvents.h"
#import "Defines.h"
#import "GameManager.h"
#import "PlayerMover.h"


@interface PlayerView : UIView {

	int team;
	int myPosition;
	
	CGPoint myStartLocation;
}

@property int team;

- (void)setPosition:(int)position;
- (void)drawO:(int)color;
- (void)drawX:(int)color;

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event;

@end
