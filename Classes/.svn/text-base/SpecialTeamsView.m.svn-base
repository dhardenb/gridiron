//
//  SpecialTeamsView.m
//  Gridiron
//
//  Created by David Hardenbrook on 6/14/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "SpecialTeamsView.h"


@implementation SpecialTeamsView


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
		[self addSubview:myHeader];
		
		myPuntButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+30, 200, 25)];
		[myPuntButton setUserInteractionEnabled:YES];
		myPuntButton.backgroundColor = [UIColor clearColor];
		[myPuntButton setType:PUNT_MENU_BUTTON];
		[myPuntButton setLabel:@"Punt Menu"];
		[self addSubview:myPuntButton];
		[myPuntButton release];
		
		myFieldGoalButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+65, 200, 25)];
		[myFieldGoalButton setUserInteractionEnabled:YES];
		myFieldGoalButton.backgroundColor = [UIColor clearColor];
		[myFieldGoalButton setType:FIELD_GOAL_MENU_BUTTON];
		[myFieldGoalButton setLabel:@"Field Goal Menu"];
		[self addSubview:myFieldGoalButton];
		[myFieldGoalButton release];
		
		myCancelButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];		[myCancelButton setUserInteractionEnabled:YES];
		myCancelButton.backgroundColor = [UIColor clearColor];
		[myCancelButton setType:CANCEL_SPECIAL_TEAMS_MENU_BUTTON];
		[myCancelButton setLabel:@"Cancel"];
		[self addSubview:myCancelButton];
		[myCancelButton release];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	if ([GameManager getPossession] == 0)
	{
		myHeader.text = @"Home Team - Select Special Teams";
	}
	else
	{
		myHeader.text = @"Away Team - Select Special Teams";
	}
	
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
