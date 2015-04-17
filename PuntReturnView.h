
#import <UIKit/UIKit.h>
#import "PromptButton.h"
#import "GameManager.h"
#import "AskQuestions.h"

@interface PuntReturnView : UIView {
	
    bool isVisable;
	
	UILabel *myHeader;
	PromptButton *myNormalPuntReturnButton;
	PromptButton *myPuntBlockButton;
	PromptButton *myReadyButton;
}

- (void)show;
- (void)hide;

@end
