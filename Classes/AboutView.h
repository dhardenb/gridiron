#import <UIKit/UIKit.h>
#import <UIKit/UIWebView.h>
#import "AskQuestions.h"
#import "PromptButton.h"

@interface AboutView : UIView <UIWebViewDelegate>
{
	bool isVisable;
	PromptButton *myDoneButton;
	UIWebView *myWebView;
}

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

@end
