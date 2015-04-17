//
//  PromptButton.h
//  Gridiron
//
//  Created by David Hardenbrook on 1/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AskQuestions.h"
#import "Defines.h"

#define NOT_PUSHED_STATE 0
#define PUSHED_STATE 1

@interface PromptButton : UIView {

    NSString *myText;
	int myType;
	int myState;
	int myCurrentSelectionState;
	
	CGRect myButtonRectangle;
}

- (void) setType:(int)type;

- (void) setLabel:(NSString *)label;

- (void) selected:(BOOL)currentlySelected;

- (void) selected:(BOOL)currenltySelected;
- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event;

@end
