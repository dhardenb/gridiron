//
//  PuntView.m
//  Gridiron
//
//  Created by David Hardenbrook on 5/5/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PuntView.h"

@implementation PuntView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		
		myHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, 20)];
		myHeader.textAlignment = UITextAlignmentCenter;
		myHeader.textColor = [UIColor whiteColor];
		myHeader.backgroundColor = [UIColor clearColor];
		[self addSubview:myHeader];
		
		myNormalPuntButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+30, 200, 25)];
		[myNormalPuntButton setUserInteractionEnabled:YES];
		myNormalPuntButton.backgroundColor = [UIColor clearColor];
		[myNormalPuntButton setType:NORMAL_PUNT_BUTTON];
		[myNormalPuntButton setLabel:@"Normal Punt"];
		[self addSubview:myNormalPuntButton];
		[myNormalPuntButton release];	
		
		/*myFakePuntButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width/2-100, [self frame].origin.y+65, 200, 25)];
		[myFakePuntButton setUserInteractionEnabled:YES];
		myFakePuntButton.backgroundColor = [UIColor clearColor];
		[myFakePuntButton setType:FAKE_PUNT_BUTTON];
		[myFakePuntButton setLabel:@"Fake Punt"];
		[self addSubview:myFakePuntButton];
		[myFakePuntButton release];*/
		
		myReadyButton = [[PromptButton alloc] initWithFrame:CGRectMake([self frame].size.width-110, [self frame].size.height-35, 100, 25)];
		[myReadyButton setUserInteractionEnabled:YES];
		myReadyButton.backgroundColor = [UIColor clearColor];
		[myReadyButton setType:PUNT_READY_BUTTON];
		[myReadyButton setLabel:@"Ready"];
		[self addSubview:myReadyButton];
		[myReadyButton release];
	}
    return self;
}

- (void)drawRect:(CGRect)rect
{
	if ([GameManager getPossession] == 0)
	{
		myHeader.text = @"Home Team - Select Punt";
	}
	else
	{
		myHeader.text = @"Away Team - Select Punt";
	}
	
	int AttackZoneSelected = [GameManager getAttackZoneSelected];
	
	if (AttackZoneSelected == NORMAL_PUNT)
	{
		[myNormalPuntButton selected:YES];
		[myFakePuntButton selected:NO];
	}
	else if (AttackZoneSelected == FAKE_PUNT)
	{
		[myNormalPuntButton selected:NO];
		[myFakePuntButton selected:YES];
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
	if (promptButton == NORMAL_PUNT_BUTTON)
	{
		[GameManager setOffensivePositionSelected:PUNTER];
		[GameManager setAttackZoneSelected:NORMAL_PUNT];
	}
	else if (promptButton == FAKE_PUNT_BUTTON)
	{
		[GameManager setOffensivePositionSelected:PUNTER];
		[GameManager setAttackZoneSelected:FAKE_PUNT];
	}
	else
	{
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
