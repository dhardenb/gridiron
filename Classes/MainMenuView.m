//
//  MainMenuView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MainMenuView.h"

@implementation MainMenuView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myTitleView = [[TitleView alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y + 10 , 200, 100)];
		myTitleView.backgroundColor = [UIColor clearColor];
		[myTitleView setLabel:@"GRIDIRON FOOTBALL"];
		[self addSubview:myTitleView];
		[myTitleView release];
		
		myCopyrightLabel = [[UILabel alloc] initWithFrame:CGRectMake(65, [self frame].origin.y + 290, 350, 20)];
		myCopyrightLabel.textAlignment = UITextAlignmentCenter;
		myCopyrightLabel.textColor = [UIColor whiteColor];
		myCopyrightLabel.backgroundColor = TURF_COLOR;
		myCopyrightLabel.text = @"Copyright \u00A92011 Hardenbrook Productions";
		[self addSubview:myCopyrightLabel];
		
		myPlayButton = [[PromptButton alloc] initWithFrame:CGRectMake(20, [self frame].origin.y+155, 200, 30)];
		[myPlayButton setUserInteractionEnabled:YES];
		myPlayButton.backgroundColor = [UIColor clearColor];
		[myPlayButton setType:START_NEW_GAME_BUTTON];
		[myPlayButton setLabel:@"Start New Game"];
		[self addSubview:myPlayButton];
		[myPlayButton release];
		
		myResumeCurrentGameButton = [[PromptButton alloc] initWithFrame:CGRectMake(20, [self frame].origin.y+195, 200, 30)];
		[myResumeCurrentGameButton setUserInteractionEnabled:YES];
		myResumeCurrentGameButton.backgroundColor = [UIColor clearColor];
		[myResumeCurrentGameButton setType:RESUME_CURRENT_GAME_BUTTON];
		[myResumeCurrentGameButton setLabel:@"Resume Current Game"];
		[self addSubview:myResumeCurrentGameButton];
		[myResumeCurrentGameButton release];
		
		myTheDriveButton = [[PromptButton alloc] initWithFrame:CGRectMake(115, [self frame].origin.y+235, 250, 30)];
		[myTheDriveButton setUserInteractionEnabled:YES];
		myTheDriveButton.backgroundColor = [UIColor clearColor];
		[myTheDriveButton setType:THE_DRIVE_BUTTON];
		[myTheDriveButton setLabel:@"Quick Mode: THE DRIVE!"];
		[self addSubview:myTheDriveButton];
		[myTheDriveButton release];
		
		myMainHelpButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, [self frame].origin.y+155, 200, 30)];
		[myMainHelpButton setUserInteractionEnabled:YES];
		myMainHelpButton.backgroundColor = [UIColor clearColor];
		[myMainHelpButton setType:MAIN_HELP_BUTTON];
		[myMainHelpButton setLabel:@"How To Play"];
		[self addSubview:myMainHelpButton];
		[myMainHelpButton release];
		
		myAboutButton = [[PromptButton alloc] initWithFrame:CGRectMake(260, [self frame].origin.y+195, 200, 30)];
		[myAboutButton setUserInteractionEnabled:YES];
		myAboutButton.backgroundColor = [UIColor clearColor];
		[myAboutButton setType:ABOUT_BUTTON];
		[myAboutButton setLabel:@"Contact Info"];
		[self addSubview:myAboutButton];
		[myAboutButton release];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	myPlayButton.alpha = 0.0;
	myResumeCurrentGameButton.alpha = 0.0;
	myTheDriveButton.alpha = 0.0;
	myMainHelpButton.alpha = 0.0;
	myAboutButton.alpha = 0.0;

	[UIView beginAnimations:nil context:context];
	[UIView setAnimationCurve:UIViewAnimationCurveLinear];
	[UIView setAnimationDuration:0.5];
	
	myPlayButton.alpha = 1.0;
	myResumeCurrentGameButton.alpha = 1.0;
	myTheDriveButton.alpha = 1.0;
	myMainHelpButton.alpha = 1.0;
	myAboutButton.alpha = 1.0;
	
	[UIView commitAnimations];
	
	if ([GameManager getNavFlag] == END_OF_GAME_NAV_FLAG ||
		[GameManager getGameInProgress] == 0)
	{
		myResumeCurrentGameButton.userInteractionEnabled = NO;
	}
	else
	{
		myResumeCurrentGameButton.userInteractionEnabled = YES;
	}
	
	[myResumeCurrentGameButton setNeedsDisplay];
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
		
		self.alpha = 1.0;
		myPlayButton.alpha = 0.0;
		myResumeCurrentGameButton.alpha = 0.0;
		myTheDriveButton.alpha = 0.0;
		myMainHelpButton.alpha = 0.0;
		myAboutButton.alpha = 0.0;
		
		// Eventualy there will be other elements here that fade out as the 
		// main menu comes up. But ONLY when in splash screen mode. At all other
		// times they should just be invisabe. I'm thinking of company name,
		// copyright, etc...
		if ([GameManager getGameState] == SPLASH_SCREEN_STATE)
		{
			myTitleView.alpha = 1.0;
			myCopyrightLabel.alpha = 1.0;
		}
		else
		{
			myTitleView.alpha = 0.0;
			myCopyrightLabel.alpha = 0.0;
		}
		
		[UIView beginAnimations:nil context:context];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDuration:0.5];
		
		self.alpha = 1.0;
		myTitleView.alpha = 1.0;
		myCopyrightLabel.alpha = 1.0;
		myPlayButton.alpha = 1.0;
		myResumeCurrentGameButton.alpha = 1.0;
		myTheDriveButton.alpha = 1.0;
		myMainHelpButton.alpha = 1.0;
		myAboutButton.alpha = 1.0;
		
		[UIView commitAnimations];
		
		isVisable = TRUE;
	}
}

- (void)dealloc
{
    [super dealloc];
}

@end
