
#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "GameManager.h"
#import "PromptButton.h"
#import "RollManager.h"

@interface CoinTossView :UIView
{
	bool isVisable;
	
	UILabel *myHeader;
	UILabel *myMessage;
	
	PromptButton *myHeadsPromptButton;
	PromptButton *myTailsPromptButton;
	PromptButton *myDoneSelectingHeadsOrTailsButton;
	PromptButton *myKickPromptButton;
	PromptButton *myReceivePromptButton;
	PromptButton *myDoneSelectingKickOrReceiveButton;
}

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

- (void)flipCoin;
- (void)reset;

@end