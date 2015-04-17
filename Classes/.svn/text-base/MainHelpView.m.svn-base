//
//  MainHelpView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/4/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MainHelpView.h"

@implementation MainHelpView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myDoneButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-105, [self frame].size.height-30, 100, 25)];
		[myDoneButton setUserInteractionEnabled:YES];
		myDoneButton.backgroundColor = [UIColor clearColor];
		[myDoneButton setType:RETURN_FROM_ABOUT_BUTTON];
		[myDoneButton setLabel:@"Done"];
		[self addSubview:myDoneButton];
		[myDoneButton release];
		
		myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, [self frame].size.height-35)];
		myWebView.scalesPageToFit = YES;
		[myWebView setDelegate:self];
		[self addSubview:myWebView];
		[myWebView release]; 
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
    NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"help" ofType:@"htm"];
    NSURL *url = [NSURL fileURLWithPath:urlAddress]; 
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:requestObj];
}

- (void)askQuestion:(int)promptButton
{	
	[(id<AskQuestions>)self.nextResponder askQuestion:promptButton];
}

- (void)hide
{
	if (isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 1.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 0.0;
		
		[UIView commitAnimations];
		
		isVisable = FALSE;
	}
}

- (void)show
{
	if (!isVisable)
	{
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		self.alpha = 0.0;
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 1.0;
		
		[UIView commitAnimations];
		
		isVisable = TRUE;
	}
}

- (void)dealloc
{
    [super dealloc];
}

@end
