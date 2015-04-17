#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface PuntView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myNormalPuntButton;
	PromptButton *myFakePuntButton;
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;

@end
