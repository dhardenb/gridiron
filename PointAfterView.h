#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface PointAfterView : UIView {
	bool isVisable;
	UILabel *myHeader;
	PromptButton *myReadyButton;
	PromptButton *myOnePointConversionButton;
	PromptButton *myTwoPointConversionButton;
}

- (void)show;
- (void)hide;

@end
