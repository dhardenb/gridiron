#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "GameManager.h"
#import "PromptButton.h"

@interface GameSetupView : UIView {
	bool isVisable;
	UILabel *myHeader;
	UILabel *myHomeTeamLabel;
	UILabel *myAwayTeamLabel;
	UILabel *myQuarterLengthLabel;
	PromptButton *myHomeTeamButton;
	PromptButton *myAwayTeamButton;
	PromptButton *myQuarterLengthButton;
	PromptButton *myDoneButton;
}

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

@end
