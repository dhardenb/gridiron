
#import "ZoneView.h"

@implementation ZoneView

- (id)initWithFrame:(CGRect)frame {
    
    if ((self = [super initWithFrame:frame])) 
	{
		myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [self frame].size.width, [self frame].size.height)];
		myLabel.textAlignment = UITextAlignmentCenter;
		myLabel.textColor = [UIColor yellowColor];
		myLabel.backgroundColor = [UIColor clearColor];
		[self addSubview:myLabel];
	}
    return self;
}

- (void)setType:(int)type {
	myType = type;
}

- (void)setZone:(int)zone {
	myZone = zone;
}

- (void)drawRect:(CGRect)rect {
	
    int currentlySelectedPlayer = [GameManager getOffensivePositionSelected];
	
	float dim = 0.25;
	float bright = 0.9;
	
	if (myZone == LEFT_SWEEP_RUSHING_LANE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if (currentlySelectedPlayer == TAIL_BACK)
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == LEFT_SWEEP_RUSHING_LANE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == LEFT_SWEEP_RUSHING_LANE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == LEFT_OFFTACKLE_RUSHING_LANE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == TAIL_BACK) ||
				(currentlySelectedPlayer == RIGHT_HALF_BACK))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == LEFT_OFFTACKLE_RUSHING_LANE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == LEFT_OFFTACKLE_RUSHING_LANE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == LEFT_INSIDE_RUSHING_LANE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == QUARTER_BACK) ||
				(currentlySelectedPlayer == FULL_BACK) ||
                (currentlySelectedPlayer == LEFT_HALF_BACK) ||
                (currentlySelectedPlayer == RIGHT_HALF_BACK) ||
				(currentlySelectedPlayer == TAIL_BACK))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == LEFT_INSIDE_RUSHING_LANE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == LEFT_INSIDE_RUSHING_LANE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == RIGHT_OFFTACKLE_RUSHING_LANE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == TAIL_BACK) ||
				(currentlySelectedPlayer == LEFT_HALF_BACK))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == RIGHT_OFFTACKLE_RUSHING_LANE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == RIGHT_OFFTACKLE_RUSHING_LANE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == RIGHT_SWEEP_RUSHING_LANE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if (currentlySelectedPlayer == TAIL_BACK)
            {
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == RIGHT_SWEEP_RUSHING_LANE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == RIGHT_SWEEP_RUSHING_LANE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == SHORT_LEFT_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == LEFT_WIDE_RECEIVER) ||
				(currentlySelectedPlayer == LEFT_SPLIT_END) ||
				(currentlySelectedPlayer == LEFT_TIGHT_END) ||
				(currentlySelectedPlayer == LEFT_HALF_BACK))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == SHORT_LEFT_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == SHORT_MIDDLE_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == LEFT_SPLIT_END) ||
				(currentlySelectedPlayer == LEFT_TIGHT_END) ||
				(currentlySelectedPlayer == RIGHT_TIGHT_END) ||
				(currentlySelectedPlayer == RIGHT_SPLIT_END))
            {
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == SHORT_MIDDLE_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == SHORT_RIGHT_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == RIGHT_WIDE_RECEIVER) ||
				(currentlySelectedPlayer == RIGHT_SPLIT_END) ||
				(currentlySelectedPlayer == RIGHT_TIGHT_END) ||
				(currentlySelectedPlayer == RIGHT_HALF_BACK))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == SHORT_RIGHT_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == MIDDLE_LEFT_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == LEFT_WIDE_RECEIVER) ||
				(currentlySelectedPlayer == LEFT_SPLIT_END) ||
				(currentlySelectedPlayer == LEFT_TIGHT_END))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == MIDDLE_LEFT_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == MIDDLE_RIGHT_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == RIGHT_WIDE_RECEIVER) ||
				(currentlySelectedPlayer == RIGHT_SPLIT_END) ||
				(currentlySelectedPlayer == RIGHT_TIGHT_END))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == MIDDLE_RIGHT_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	else if (myZone == DEEP_PASSING_ZONE)
	{
		if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER)
		{
			alphaValue = dim;
			self.userInteractionEnabled = NO;
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
		{
			if ((currentlySelectedPlayer == LEFT_WIDE_RECEIVER) ||
				(currentlySelectedPlayer == RIGHT_WIDE_RECEIVER))
			{
				alphaValue = bright;
				self.userInteractionEnabled = YES;
			}
			else
			{
				alphaValue = dim;
				self.userInteractionEnabled = NO;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
		{
			if ([GameManager getHighlightedZone] == DEEP_PASSING_ZONE)
			{
				alphaValue = bright;
			}
			else
			{
				alphaValue = dim;
			}
		}
		else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
		{
			self.userInteractionEnabled = NO;
			
			if ([GameManager getOffensivePositionSelected] == KICKER || [GameManager getOffensivePositionSelected] == PUNTER)
			{
				alphaValue = 0.0;
			}
			else
			{
				if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
				{
					alphaValue = bright;
				}
				else
				{
					alphaValue = dim;
				}
			}
		}
	}
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	if (myType == RUSHING_ZONE)
	{
        CGContextSetRGBStrokeColor(context,  0.271, 0.135, 0.037, alphaValue);
		CGContextSetRGBFillColor(context, 0.543, 0.270, 0.074, alphaValue);
	}
	else if (myType == PASSING_ZONE)
	{
		CGContextSetRGBStrokeColor(context,  0.25, 0.25, 0.50, alphaValue);
		CGContextSetRGBFillColor(context, 0.5, 0.5, 1.0, alphaValue);
	}

	CGRect rrect = CGRectMake(1, 1, [self frame].size.width-2, [self frame].size.height-2);
	CGFloat radius = 10.0;
	
	CGFloat minx = CGRectGetMinX(rrect), midx = CGRectGetMidX(rrect), maxx = CGRectGetMaxX(rrect);
	CGFloat miny = CGRectGetMinY(rrect), midy = CGRectGetMidY(rrect), maxy = CGRectGetMaxY(rrect);
	
	CGContextMoveToPoint(context, minx, midy);
	CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
	CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
	CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
	CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
	
	CGContextClosePath(context);
	CGContextDrawPath(context, kCGPathFillStroke);
	
	// Show Play Selector if appropriate
	
	if (([GameManager getAttackZoneSelected] == myZone) && (([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE) || ([GameManager getGameState] == WAITING_TO_HIKE_BALL)))
	{
	
		CGContextSetLineWidth(context, 2.0);
		CGContextSetRGBStrokeColor(context, 1.0, 1.0, 0.0, 1.0);
	
		CGContextAddEllipseInRect(context, CGRectMake([self frame].size.width/2-15, [self frame].size.height/2-15, 30, 30));
	
		CGContextMoveToPoint(context, [self frame].size.width/2, 5);
		CGContextAddLineToPoint(context, [self frame].size.width/2, 15);
	
		CGContextMoveToPoint(context, [self frame].size.width/2+5, [self frame].size.height/2);
		CGContextAddLineToPoint(context, [self frame].size.width/2+15, [self frame].size.height/2);
	
		CGContextMoveToPoint(context,  [self frame].size.width/2, 25);
		CGContextAddLineToPoint(context,  [self frame].size.width/2, 35);
	
		CGContextMoveToPoint(context, [self frame].size.width/2-5, [self frame].size.height/2);
		CGContextAddLineToPoint(context, [self frame].size.width/2-15, [self frame].size.height/2);
	
		CGContextStrokePath(context);
	}
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event
{
	[self.superview attackZoneTapped:myZone];
}

- (void)dealloc
{
    [super dealloc];
}

@end
