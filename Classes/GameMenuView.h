#import <Foundation/Foundation.h>
#import "AskQuestions.h"
#import "GameManager.h"
#import "PromptButton.h"

@interface GameMenuView : UIView {
	bool isVisable;
	PromptButton *myEndGameButton;
	PromptButton *myResumeGameButton;
	PromptButton *myHelpButton;
	PromptButton *myAboutButton;
	PromptButton *myFieldGoalButton;
	PromptButton *myPuntButton;
	PromptButton *myTimeOutButton;
}

- (void)updateFieldGoalButton;
- (void)updatePuntButton;
- (void)updateTimeoutButton;

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

@end
