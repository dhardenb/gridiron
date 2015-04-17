//
//  MainMenuView.h
//  Gridiron
//
//  Created by David Hardenbrook on 5/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameManager.h"
#import "PromptButton.h"
#import "TitleView.h"

@interface MainMenuView : UIView
{
	bool isVisable;
	
	TitleView *myTitleView;
	UILabel *myCopyrightLabel;
	PromptButton *myPlayButton;
	PromptButton *myMainHelpButton;
	PromptButton *myAboutButton;
	PromptButton *myResumeCurrentGameButton;
	PromptButton *myTheDriveButton;
}

- (void)askQuestion:(int)promptButton;
- (void)show;
- (void)hide;

@end
