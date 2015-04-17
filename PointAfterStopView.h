#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface PointAfterStopView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myPointAfterStopButton;
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;

@end
