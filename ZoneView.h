#import <UIKit/UIKit.h>
#import "Defines.h"
#import "GameManager.h"

@interface ZoneView : UIView {
	int myType;
	int myZone;
	float alphaValue;
	
	UILabel *myLabel;
}

- (void)setType:(int)type;
- (void)setZone:(int)zone;
- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event;

@end
