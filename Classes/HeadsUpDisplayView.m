//
//  HeadsUpDisplayView.m
//  Gridiron
//
//  Created by David Hardenbrook on 3/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "HeadsUpDisplayView.h"

@implementation HeadsUpDisplayView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		// Home Name
		myHomeName = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 60, [self frame].size.height)];
		myHomeName.textColor = [UIColor greenColor];
		myHomeName.backgroundColor = [UIColor clearColor];
		myHomeName.text = @"HOME";
		[self addSubview:myHomeName];
		
		// Home Score
		myHomeScore = [[UILabel alloc] initWithFrame:CGRectMake(70, 0, 20, [self frame].size.height)];
		myHomeScore.textColor = [UIColor yellowColor];
		myHomeScore.backgroundColor = [UIColor clearColor];
		[self addSubview:myHomeScore];
		
		// Home Possession
		myHomePossession = [[UILabel alloc] initWithFrame:CGRectMake(95, 0, 20, [self frame].size.height)];
		myHomePossession.textColor = [UIColor yellowColor];
		myHomePossession.backgroundColor = [UIColor clearColor];
		myHomePossession.textAlignment = UITextAlignmentLeft;
		myHomePossession.text = @"\u2190";
		[self addSubview:myHomePossession];
		
		// Down
		myDown = [[UILabel alloc] initWithFrame:CGRectMake(120, 0, 90, [self frame].size.height)];
		myDown.textColor = [UIColor yellowColor];
		myDown.backgroundColor = [UIColor clearColor];
		myAwayScore.textAlignment = UITextAlignmentCenter;
		[self addSubview:myDown];
		
		// Clock
		myClock = [[UILabel alloc] initWithFrame:CGRectMake(205, 0, 50, [self frame].size.height)];
		myClock.textColor = [UIColor yellowColor];
		myClock.backgroundColor = [UIColor clearColor];
		myClock.textAlignment = UITextAlignmentCenter;
		[self addSubview:myClock];
		
		// Quarter
		myQuarter = [[UILabel alloc] initWithFrame:CGRectMake(255, 0, 25, [self frame].size.height)];
		myQuarter.textColor = [UIColor yellowColor];
		myQuarter.backgroundColor = [UIColor clearColor];
		myQuarter.textAlignment = UITextAlignmentRight;
		[self addSubview:myQuarter];
		
		// Away Possession
		myAwayPossession = [[UILabel alloc] initWithFrame:CGRectMake(290, 0, 20, [self frame].size.height)];
		myAwayPossession.textColor = [UIColor yellowColor];
		myAwayPossession.backgroundColor = [UIColor clearColor];
		myAwayPossession.textAlignment = UITextAlignmentRight;
		myAwayPossession.text = @"\u2192";
		[self addSubview:myAwayPossession];
		
		// Away Score
		myAwayScore = [[UILabel alloc] initWithFrame:CGRectMake(310, 0, 20, [self frame].size.height)];
		myAwayScore.textColor = [UIColor yellowColor];
		myAwayScore.backgroundColor = [UIColor clearColor];
		myAwayScore.textAlignment = UITextAlignmentRight;
		[self addSubview:myAwayScore];
		
		// Away Name
		myAwayName = [[UILabel alloc] initWithFrame:CGRectMake(325, 0, 60, [self frame].size.height)];
		myAwayName.textColor = [UIColor redColor];
		myAwayName.backgroundColor = [UIColor clearColor];
		myAwayName.textAlignment = UITextAlignmentRight;
		myAwayName.text = @"AWAY";
		[self addSubview:myAwayName];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	[self UpdateBackground];
	[self UpdatePossessionIndicator];
	[self UpdateScore];
	[self UpdateTimeouts];
	[self UpdateClock];
	[self UpdateQuarter];
	[self UpdateBallPosition];
}

- (void)UpdateBackground
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	
	CGContextAddRect(context, CGRectMake(0, 0, [self frame].size.width, [self frame].size.height));
	
	CGContextDrawPath(context, kCGPathFill);
	
	CGContextSetRGBStrokeColor(context, 0.94, 0.75, 0.00, 1.0);
	
	CGContextAddRect(context, CGRectMake(1, 1, 398, 23));
	
	CGContextMoveToPoint(context, 110, 2);
	
	CGContextAddLineToPoint(context, 110, 23);
	
	CGContextMoveToPoint(context, 200, 2);
	
	CGContextAddLineToPoint(context, 200, 23);
	
	CGContextMoveToPoint(context, 290, 2);
	
	CGContextAddLineToPoint(context, 290, 23);
	
	CGContextDrawPath(context, kCGPathStroke);
}

- (void)UpdatePossessionIndicator
{
	if ([GameManager getPossession] == HOME_TEAM)
	{
		// Home Team Possion Indicator
		myHomePossession.hidden = FALSE;
		myAwayPossession.hidden = TRUE;
	}
	else
	{
		// Away Team Possion Indicator
		myHomePossession.hidden = TRUE;
		myAwayPossession.hidden = FALSE;
	}
}

- (void)UpdateScore
{
	// Home Team Score
	
	int HomeScore = [GameManager getHomeScore];
	
	NSString *StartHomeScoreString = [[NSNumber numberWithInt:HomeScore] stringValue];
	NSString *EndHomeScoreString = @"";
	
	if (HomeScore < 10)
	{
		EndHomeScoreString = [@"0" stringByAppendingString:StartHomeScoreString];
	}
	else
	{
		EndHomeScoreString = StartHomeScoreString;
	}
	
	myHomeScore.text = EndHomeScoreString;
	
	// Away Team Score
	
	int AwayScore = [GameManager getVisitorScore];
	
	NSString *StartAwayScoreString = [[NSNumber numberWithInt:AwayScore] stringValue];
	NSString *EndAwayScoreString = @"";
	
	if (AwayScore < 10)
	{
		EndAwayScoreString = [@"0" stringByAppendingString:StartAwayScoreString];
	}
	else
	{
		EndAwayScoreString = StartAwayScoreString;
	}
	
	myAwayScore.text = EndAwayScoreString;
}

- (void)UpdateTimeouts
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	int homeTeamTimeOuts = [GameManager getHomeTeamTimeOuts];
	int awayTeamTimeOuts = [GameManager getAwayTeamTimeOuts];
	
	// Draw the time out circles
	
	if (homeTeamTimeOuts > 2)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(4.0, 5.0, 5.0, 5.0));
	CGContextFillPath(context);
	
	if (homeTeamTimeOuts > 1)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(4.0, 11.0, 5.0, 5.0));
	CGContextFillPath(context);
	
	if (homeTeamTimeOuts > 0)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(4.0, 17.0, 5.0, 5.0));
	CGContextFillPath(context);
	
	if (awayTeamTimeOuts > 2)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(391.0, 5.0, 5.0, 5.0));
	CGContextFillPath(context);
	
	if (awayTeamTimeOuts > 1)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(391.0, 11.0, 5.0, 5.0));
	CGContextFillPath(context);
	
	if (awayTeamTimeOuts > 0)
	{
		CGContextSetRGBFillColor(context, 0.94, 0.75, 0.00, 1.0);
	}
	else
	{
		CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 1.0);
	}
	
	CGContextAddEllipseInRect(context, CGRectMake(391.0, 17.0, 5.0, 5.0));
	CGContextFillPath(context);
}

- (void)UpdateClock
{	
	int timeLeft = [GameManager getClock];
	int minutes = timeLeft / 60;
	int seconds = timeLeft % 60;
	
	NSString *minutesString = [[NSNumber numberWithInt:minutes] stringValue];
	
	if (minutes < 10)
	{
		minutesString = [@"0" stringByAppendingString:minutesString];
	}
	
	NSString *secondsString = [[NSNumber numberWithInt:seconds] stringValue];
	
	if (seconds < 10)
	{
		secondsString = [@"0" stringByAppendingString:secondsString];
	}
	
	NSString *gameClock = [minutesString stringByAppendingString:@":"];
	gameClock = [gameClock stringByAppendingString:secondsString];
	
	myClock.text = gameClock;
	
	if ([GameManager getGameClockStatus] == GAME_CLOCK_RUNNING)
	{
		[self startGameClockAnimation];
	}
	else
	{
		[self stopGameClockAnimation];
	}
	
	if (timeLeft <= 120 && ([GameManager getQuarter] == 2 || [GameManager getQuarter] == 4 || [GameManager getQuarter] == 5))
	{
		myClock.textColor = [UIColor redColor];
	}
	else
	{
		myClock.textColor = [UIColor yellowColor];
	}
}

- (void)UpdateQuarter
{
	NSString *FinalQuarterString = @"";
	
	if ([GameManager getQuarter] == 5)
	{
		FinalQuarterString = @"OT";
	}
	else
	{
		NSString *CurrentQuarter = [[NSNumber numberWithInt:[GameManager getQuarter]] stringValue];
		FinalQuarterString = [CurrentQuarter stringByAppendingString:@"Q"];
	}
	
	myQuarter.text = FinalQuarterString;
}

- (void)UpdateBallPosition
{
	myDown.text = [self getBallPosition];
	
	if ([GameManager getDown] == 4)
	{
		myDown.textColor = [UIColor redColor];
	}
	else
	{
		myDown.textColor = [UIColor yellowColor];
	}
}

- (NSString *)getBallPosition
{
	NSString *yardsToGo = [[NSNumber numberWithInt:[GameManager getYardsToGo]] stringValue];
	
	int tempLineOfScrimmage = [GameManager getLineOfScrimmage];
    
    if (tempLineOfScrimmage > 50)
    {
        tempLineOfScrimmage = 100 - tempLineOfScrimmage;
    }
    
	int tempYardsToGo = [GameManager getYardsToGo];
	
	if (tempLineOfScrimmage - tempYardsToGo < 1)
	{
		if ([GameManager getLineOfScrimmage] < 50)
		{
			yardsToGo = @"G";
		}
	}
	
	NSString *string1 = [[NSNumber numberWithInt:[GameManager getDown]] stringValue];
	NSString *string2 = [string1 stringByAppendingString:@"-"];
	NSString *string3 = [string2 stringByAppendingString:yardsToGo];
	NSString *string4 = [string3 stringByAppendingString:@" "];
	NSString *string5 = [string4 stringByAppendingString:[GameManager getSideOfField]];
	NSString *string6 = [string5 stringByAppendingString:[[NSNumber numberWithInt:tempLineOfScrimmage] stringValue]];
	
	if ([GameManager getAttemptingTwoPoints] == 1)
	{
		return @"2PC";
	}
	else
	{
		return string6;
	}
}

- (void)startGameClockAnimation
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGRect frame;
	
	myClock.alpha = 1.0;
	frame = [myClock frame];
	[myClock setFrame:frame];
	
	[UIView beginAnimations:nil context:context];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationRepeatAutoreverses:YES];
	[UIView setAnimationRepeatCount:1e100f];
	[UIView setAnimationDuration:1.0];
	
	myClock.alpha = 0.25;
	frame = [myClock frame];
	[myClock setFrame:frame];
	
	[UIView commitAnimations];
}

- (void)stopGameClockAnimation
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGRect frame;
	
	myClock.alpha = 1.0;
	frame = [myClock frame];
	[myClock setFrame:frame];
	
	[UIView beginAnimations:nil context:context];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationRepeatAutoreverses:YES];
	[UIView setAnimationRepeatCount:1];
	[UIView setAnimationDuration:0.0];
	
	myClock.alpha = 1.0;
	frame = [myClock frame];
	[myClock setFrame:frame];
	
	[UIView commitAnimations];
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
