#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface KickoffReturnView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myReadyButton;
	PromptButton *myNormalKickOffReturnButton;
	PromptButton *myReverseKickOffReturnButton;
}

- (void)show;
- (void)hide;

@end
