//
//  CoinTossView.m
//  Gridiron
//
//  Created by David Hardenbrook on 1/15/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "CoinTossView.h"

static int mySelection = 0;
static int myResult = 0;

@implementation CoinTossView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, 20)];
		myHeader.textAlignment = UITextAlignmentCenter;
		myHeader.textColor = [UIColor whiteColor];
		myHeader.backgroundColor = [UIColor clearColor];
		myHeader.text = @"Coin Toss";
		[self addSubview:myHeader];
		
		myMessage = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, [self frame].size.width-20, 100)];
		myMessage.textColor = [UIColor whiteColor];
		myMessage.backgroundColor = [UIColor clearColor];
		myMessage.numberOfLines = 0;
		[self addSubview:myMessage];
		
		// myHeadsPromptButton
		myHeadsPromptButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width*.33-50, 160, 100, 25)];
		[myHeadsPromptButton setUserInteractionEnabled:YES];
		myHeadsPromptButton.backgroundColor = [UIColor clearColor];
		[myHeadsPromptButton setType:SELECT_HEADS_BUTTON];
		[myHeadsPromptButton setLabel:@"Heads"];
		[self addSubview:myHeadsPromptButton];
		[myHeadsPromptButton release];
		
		// myTailsPromptButton
		myTailsPromptButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width*.66-50, 160, 100, 25)];
		[myTailsPromptButton setUserInteractionEnabled:YES];
		myHeadsPromptButton.backgroundColor = [UIColor clearColor];
		[myTailsPromptButton setType:SELECT_TAILS_BUTTON];
		[myTailsPromptButton setLabel:@"Tails"];
		[self addSubview:myTailsPromptButton];
		[myTailsPromptButton release];
		
		myDoneSelectingHeadsOrTailsButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myDoneSelectingHeadsOrTailsButton setUserInteractionEnabled:YES];
		myDoneSelectingHeadsOrTailsButton.backgroundColor = [UIColor clearColor];
		[myDoneSelectingHeadsOrTailsButton setType:DONE_REVIEWING_HEADS_OR_TAILS_BUTTON];
		[myDoneSelectingHeadsOrTailsButton setLabel:@">"];
		[self addSubview:myDoneSelectingHeadsOrTailsButton];
		[myDoneSelectingHeadsOrTailsButton release];
		
		// myKickPromptButton
		myKickPromptButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width*.33-50, 160, 100, 25)];
		[myKickPromptButton setUserInteractionEnabled:YES];
		myKickPromptButton.backgroundColor = [UIColor clearColor];
		[myKickPromptButton setType:SELECT_KICK_FIRST_BUTTON];
		[myKickPromptButton setLabel:@"Kick"];
		[self addSubview:myKickPromptButton];
		[myKickPromptButton release];
		
		// myReceivePromptButton
		myReceivePromptButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width*.66-50, 160, 100, 25)];
		[myReceivePromptButton setUserInteractionEnabled:YES];
		myReceivePromptButton.backgroundColor = [UIColor clearColor];
		[myReceivePromptButton setType:SELECT_RECEIVE_FIRST_BUTTON];
		[myReceivePromptButton setLabel:@"Receive"];
		[self addSubview:myReceivePromptButton];
		[myReceivePromptButton release];
		
		myDoneSelectingKickOrReceiveButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myDoneSelectingKickOrReceiveButton setUserInteractionEnabled:YES];
		myDoneSelectingKickOrReceiveButton.backgroundColor = [UIColor clearColor];
		[myDoneSelectingKickOrReceiveButton setType:DONE_REVIEWING_KICK_OR_RECEIVE_BUTTON];
		[myDoneSelectingKickOrReceiveButton setLabel:@">"];
		[self addSubview:myDoneSelectingKickOrReceiveButton];
		[myDoneSelectingKickOrReceiveButton release];
    }
	
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBStrokeColor(context,  0.0, 0.0, 0.0, 1.0);
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.9);
	
	CGRect rrect = CGRectMake(0, 0, [self frame].size.width, [self frame].size.height);
	CGFloat radius = 30.0;
	
	CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
	CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect);
	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	
	CGContextClosePath(context);
	CGContextDrawPath(context, kCGPathFillStroke);
	
	///////////////////////////////////////////////////////
	// Set Up The Buttons Based On The Current Game State
	///////////////////////////////////////////////////////
	
	if ([GameManager getGameState] == WAITING_TO_SELECT_COIN_TOSS)
	{
		myHeadsPromptButton.hidden = FALSE;
		myTailsPromptButton.hidden = FALSE;
		myDoneSelectingHeadsOrTailsButton.hidden = TRUE;
		myKickPromptButton.hidden = TRUE;
		myReceivePromptButton.hidden = TRUE;
		myDoneSelectingKickOrReceiveButton.hidden = TRUE;
	}
	else if ([GameManager getGameState] == WAITING_TO_REVIEW_COIN_TOSS)
	{
		myHeadsPromptButton.hidden = TRUE;
		myTailsPromptButton.hidden = TRUE;
		myDoneSelectingHeadsOrTailsButton.hidden = FALSE;
		myKickPromptButton.hidden = TRUE;
		myReceivePromptButton.hidden = TRUE;
		myDoneSelectingKickOrReceiveButton.hidden = TRUE;
	}
	else if ([GameManager getGameState] == WAITING_TO_SELECT_KICK_OR_RECEIVE)
	{
		myHeadsPromptButton.hidden = TRUE;
		myTailsPromptButton.hidden = TRUE;
		myDoneSelectingHeadsOrTailsButton.hidden = TRUE;
		myKickPromptButton.hidden = FALSE;
		myReceivePromptButton.hidden = FALSE;
		myDoneSelectingKickOrReceiveButton.hidden = TRUE;
	}
	else if ([GameManager getGameState] == WAITING_TO_REVIEW_KICK_OR_RECEIVE)
	{
		myHeadsPromptButton.hidden = TRUE;
		myTailsPromptButton.hidden = TRUE;
		myDoneSelectingHeadsOrTailsButton.hidden = TRUE;
		myKickPromptButton.hidden = TRUE;
		myReceivePromptButton.hidden = TRUE;
		myDoneSelectingKickOrReceiveButton.hidden = FALSE;
	}
	
	///////////////////////////////////////////////////////
	// Set Up The Message Based On The Current Game State
	//////////////////////////////////////////////////////
	
	if ([GameManager getGameState] == WAITING_TO_SELECT_COIN_TOSS)
	{
		myMessage.text = @"Away Team, please select heads or tails.";
	}
	else if ([GameManager getGameState] == WAITING_TO_REVIEW_COIN_TOSS)
	{
		if ([GameManager getWonCoinToss] == HOME_TEAM)
		{
			myMessage.text = @"Home Team won the coin toss!";
		}
		else
		{
			myMessage.text = @"Away Team won the coin toss!";
		}
	}
	else if ([GameManager getGameState] == WAITING_TO_SELECT_KICK_OR_RECEIVE)
	{
		if ([GameManager getWonCoinToss] == HOME_TEAM)
		{
			myMessage.text = @"Home Team, please select Kick or Receive.";
		}
		else
		{
			myMessage.text = @"Away Team, please select Kick or Receive.";
		}
	}
	else if ([GameManager getGameState] == WAITING_TO_REVIEW_KICK_OR_RECEIVE)
	{
		if ([GameManager getWonCoinToss] == HOME_TEAM)
		{
			if ([GameManager getKickedFirst] == HOME_TEAM)
			{
				myMessage.text = @"The Home Team has elected kick.\n\nAway Team, prepare to receive!";
			}
			else
			{
				myMessage.text = @"The Home Team has elected to receive.\n\nAway Team, prepare to kick off!";
			}
		}
		else
		{
			if ([GameManager getKickedFirst] == HOME_TEAM)
			{
				myMessage.text = @"The Away Team has elected to receive.\n\nHome Team, prepare to kick off!";
			}
			else
			{
				myMessage.text = @"The Away Team has elected kick.\n\nHome Team, prepare to receive!";
			}
		}
	}
}

- (void)askQuestion:(int)promptButton
{
	if (promptButton == SELECT_HEADS_BUTTON)
	{
		[self flipCoin];
	}
	else if (promptButton == SELECT_TAILS_BUTTON)
	{
		[self flipCoin];
	}
	else if (promptButton == SELECT_KICK_FIRST_BUTTON)
	{
		if ([GameManager getWonCoinToss] == HOME_TEAM)
		{
			[GameManager setPossession:HOME_TEAM];
			[GameManager setKickedFirst:HOME_TEAM];
		}
		else
		{
			[GameManager setPossession:AWAY_TEAM];
			[GameManager setKickedFirst:AWAY_TEAM];
		}
	}
	else if (promptButton == SELECT_RECEIVE_FIRST_BUTTON)
	{
		if ([GameManager getWonCoinToss] == HOME_TEAM)
		{
			[GameManager setPossession:AWAY_TEAM];
			[GameManager setKickedFirst:AWAY_TEAM];
		}
		else
		{
			[GameManager setPossession:HOME_TEAM];
			[GameManager setKickedFirst:HOME_TEAM];
		}
	}
	 
	[(id<AskQuestions>)self.superview askQuestion:promptButton];
}

- (void)flipCoin
{
	int flip = [RollManager rollOneHundredSidedDice];
	
	if (flip <= 50)
	{
		[GameManager setWonCoinToss:AWAY_TEAM];
	}
	else
	{
		[GameManager setWonCoinToss:HOME_TEAM];
	}
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

- (void)reset
{
	mySelection = 0;
	myResult = 0;
}

- (void)dealloc
{
    [super dealloc];
}

@end
