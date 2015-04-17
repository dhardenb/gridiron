#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "GameManager.h"
#import "PromptButton.h"

@interface ControlPanelView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myMenuButton;
	PromptButton *myNextButton;
	PromptButton *myHikeButton;
	PromptButton *myFormationButton;
}

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

@end
