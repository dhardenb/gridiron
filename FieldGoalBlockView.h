#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface FieldGoalBlockView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myFieldGoalBlockButton;
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;

@end
