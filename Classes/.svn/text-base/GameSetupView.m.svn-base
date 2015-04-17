
#import "GameSetupView.h"


@implementation GameSetupView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, 30)];
		myHeader.textAlignment = UITextAlignmentCenter;
		myHeader.textColor = [UIColor whiteColor];
		myHeader.backgroundColor = [UIColor clearColor];
		myHeader.text = @"Game Setup";
		[self addSubview:myHeader];
		
		myHomeTeamLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 150, 30)];
		myHomeTeamLabel.textColor = [UIColor whiteColor];
		myHomeTeamLabel.backgroundColor = [UIColor clearColor];
		myHomeTeamLabel.text = @"Home Team: ";
		[self addSubview:myHomeTeamLabel];
		
		myAwayTeamLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 150, 30)];
		myAwayTeamLabel.textColor = [UIColor whiteColor];
		myAwayTeamLabel.backgroundColor = [UIColor clearColor];
		myAwayTeamLabel.text = @"Away Team: ";
		[self addSubview:myAwayTeamLabel];
		
		myQuarterLengthLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 150, 30)];
		myQuarterLengthLabel.textColor = [UIColor whiteColor];
		myQuarterLengthLabel.backgroundColor = [UIColor clearColor];
		myQuarterLengthLabel.text = @"Quarter Length: ";
		[self addSubview:myQuarterLengthLabel];
		
		myHomeTeamButton = [[PromptButton alloc] initWithFrame:CGRectMake(170, 40, 100, 25)];
		[myHomeTeamButton setUserInteractionEnabled:YES];
		myHomeTeamButton.backgroundColor = [UIColor clearColor];
		[myHomeTeamButton setType:HOME_TEAM_PLAYER_SELECTION_BUTTON];
		[self addSubview:myHomeTeamButton];
		[myHomeTeamButton release];
		
		myAwayTeamButton = [[PromptButton alloc] initWithFrame:CGRectMake(170, 80, 100, 25)];
		[myAwayTeamButton setUserInteractionEnabled:YES];
		myAwayTeamButton.backgroundColor = [UIColor clearColor];
		[myAwayTeamButton setType:AWAY_TEAM_PLAYER_SELECTION_BUTTON];
		[self addSubview:myAwayTeamButton];
		[myAwayTeamButton release];
		
		myQuarterLengthButton = [[PromptButton alloc] initWithFrame:CGRectMake(170, 120, 100, 25)];
		[myQuarterLengthButton setUserInteractionEnabled:YES];
		myQuarterLengthButton.backgroundColor = [UIColor clearColor];
		[myQuarterLengthButton setType:QUARTER_LENGTH_BUTTON];
		[self addSubview:myQuarterLengthButton];
		[myQuarterLengthButton release];
		
		myDoneButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myDoneButton setUserInteractionEnabled:YES];
		myDoneButton.backgroundColor = [UIColor clearColor];
		[myDoneButton setType:DONE_SETTING_UP_GAME_BUTTON];
		[myDoneButton setLabel:@">"];
		[self addSubview:myDoneButton];
		[myDoneButton release];
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
	
	if ([GameManager getHomeTemType] == HUMAN_COACH)
	{
		[myHomeTeamButton setLabel:@"Human"];
	}
	else
	{
		[myHomeTeamButton setLabel:@"Computer"];
	}
	
	if ([GameManager getAwayTemType] == HUMAN_COACH)
	{
		[myAwayTeamButton setLabel:@"Human"];
	}
	else
	{
		[myAwayTeamButton setLabel:@"Computer"];
	}
	
	if ([GameManager getQuarterLength] == QUARTER_LENGTH_2_HALF_MINUTES)
	{
		[myQuarterLengthButton setLabel:@"2:30"];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_5_MINUTES)
	{
		[myQuarterLengthButton setLabel:@"5:00"];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_10_MINUTES)
	{
		[myQuarterLengthButton setLabel:@"10:00"];
	}
	else if ([GameManager getQuarterLength] == QUARTER_LENGTH_15_MINUTES)
	{
		[myQuarterLengthButton setLabel:@"15:00"];
	}
	
	[myHomeTeamButton setNeedsDisplay];
	[myAwayTeamButton setNeedsDisplay];
	[myQuarterLengthButton setNeedsDisplay];
}

- (void)askQuestion:(int)promptButton
{
	if (promptButton == HOME_TEAM_PLAYER_SELECTION_BUTTON)
	{
		if ([GameManager getHomeTemType] == HUMAN_COACH)
		{
			[GameManager setHomeTeamType:COMPUTER_COACH];
		}
		else
		{
			[GameManager setHomeTeamType:HUMAN_COACH];
		}
	}
	else if (promptButton == AWAY_TEAM_PLAYER_SELECTION_BUTTON)
	{
		if ([GameManager getAwayTemType] == HUMAN_COACH)
		{
			[GameManager setAwayTeamType:COMPUTER_COACH];
		}
		else
		{
			[GameManager setAwayTeamType:HUMAN_COACH];
		}
	}
	else if (promptButton == QUARTER_LENGTH_BUTTON)
	{
		if ([GameManager getQuarterLength] == QUARTER_LENGTH_2_HALF_MINUTES)
		{
			[GameManager setQuarterLength:QUARTER_LENGTH_5_MINUTES];
		}
		else if ([GameManager getQuarterLength] == QUARTER_LENGTH_5_MINUTES)
		{
			[GameManager setQuarterLength:QUARTER_LENGTH_10_MINUTES];
		}
		else if ([GameManager getQuarterLength] == QUARTER_LENGTH_10_MINUTES)
		{
			[GameManager setQuarterLength:QUARTER_LENGTH_15_MINUTES];
		}
		else if ([GameManager getQuarterLength] == QUARTER_LENGTH_15_MINUTES)
		{
			[GameManager setQuarterLength:QUARTER_LENGTH_2_HALF_MINUTES];
		}
	}
	else
	{
		[ClockManager reset];
		[(id<AskQuestions>)self.nextResponder askQuestion:promptButton];
	}
	
	[self setNeedsDisplay];
	
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
