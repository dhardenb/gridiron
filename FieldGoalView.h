#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface FieldGoalView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myNormalFieldGoalButton;
	PromptButton *myFakeFieldGoalButton;
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;

@end
