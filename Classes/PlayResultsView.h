#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "PromptButton.h"
#import "GameManager.h"

@interface PlayResultsView : UIView {
	bool isVisable;
	UILabel *myHeader;
	UILabel *myMessage;
	PromptButton *myCancelButton; 
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;
- (void)askQuestion:(int)promptButton;

@end
