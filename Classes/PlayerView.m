
#import "PlayerView.h"

@implementation PlayerView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {}
    return self;
}

@synthesize team;

- (void) setPosition:(int)position
{
	myPosition = position;
}

- (void)drawRect:(CGRect)rect
{
	if (self.team == HOME_TEAM)
	{
		if ([GameManager isHomeTeamOffense])
		{
			[self drawO:0];
		}
		else
		{
			[self drawX:0];
		}
	}
	else // AWAY_TEAM
	{
		if ([GameManager isAwayTeamOffense])
		{
			[self drawO:1];
		}
		else
		{
			[self drawX:1];
		}
	}
}

- (void)drawO:(int)color
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	if (((myPosition == LEFT_TACKLE ||
          myPosition == LEFT_GAURD ||
          myPosition == CENTER ||
          myPosition == RIGHT_GAURD ||
          myPosition == RIGHT_TACKLE)) &&
		((([GameManager getAttackZoneSelected] != NORMAL_KICK_OFF) &&
          ([GameManager getAttackZoneSelected] != SQUIB_KICK_OFF) &&
          ([GameManager getAttackZoneSelected] != ONSIDE_KICK_OFF))))
	{
		// Draw Shadow
		for (int x = 12; x > 0; x--)
		{
			CGContextSetLineWidth(context, x);
			CGContextSetRGBStrokeColor(context, 0.25, 0.25, 0.25, 0.1);
			
			CGContextSetLineJoin( context, kCGLineJoinRound );
			
			CGContextBeginPath( context );
			
			CGContextMoveToPoint(context, 10, 4);
			
			CGContextAddLineToPoint(context, 26, 4);
			CGContextAddLineToPoint(context, 26, 20);
			CGContextAddLineToPoint(context, 10, 20);
			CGContextAddLineToPoint(context, 10, 4);
			
			CGContextClosePath( context );
			
			CGContextStrokePath(context);
		}
		
		// Pick Color
		if (color == 0)
		{
			CGContextSetRGBStrokeColor(context, 0.0, 1.0, 0.0, 1.0);
		}
		else // 1
		{
			CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
		}
		
		// Draw Square
		CGContextSetLineWidth(context, 4);
        
		CGContextSetLineJoin( context, kCGLineJoinRound );
		
		CGContextBeginPath( context );
		
		CGContextMoveToPoint(context, 12, 2);
		
		CGContextAddLineToPoint(context, 28, 2);
		CGContextAddLineToPoint(context, 28, 18);
		CGContextAddLineToPoint(context, 12, 18);
		CGContextAddLineToPoint(context, 12, 2);
		
		CGContextClosePath( context );
		
		CGContextStrokePath(context);
	}
	else
	{
        CGContextRef context = UIGraphicsGetCurrentContext();
        
		// Draw Shadow
		for (int x = 12; x > 0; x--)
		{
			CGContextSetLineWidth(context, x);
			CGContextSetRGBStrokeColor(context, 0.25, 0.25, 0.25, 0.1);
			CGContextAddEllipseInRect(context, CGRectMake(10.0, 4.0, 16.0, 16.0));
			CGContextStrokePath(context);
		}
		
		// Pick Color
		if (color == 0)
		{
			CGContextSetRGBStrokeColor(context, 0.0, 1.0, 0.0, 1.0);
		}
		else // 1
		{
			CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
		}
		
		// Draw O
		CGContextSetLineWidth(context, 4);
		CGContextAddEllipseInRect(context, CGRectMake(12.0, 2.0, 16.0, 16.0));
		CGContextStrokePath(context);
	}
}

- (void)drawX:(int)color
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
		CGContextScaleCTM (context, 2.13,  2.4);
	
	// Draw Shadow
	for (int x = 10; x > 0; x--)
	{
		CGContextSetLineWidth(context, x);
		CGContextSetRGBStrokeColor(context, 0.25, 0.25, 0.25, 0.1);
		
		CGContextMoveToPoint(context, 8, 24);
		CGContextAddLineToPoint(context, 28, 4);
		
		CGContextMoveToPoint(context, 8, 4);
		CGContextAddLineToPoint(context, 28, 24);
		
		CGContextStrokePath(context);
	}
	
	// Pick Color
	if (color == 0)
	{
		CGContextSetRGBStrokeColor(context, 0.0, 1.0, 0.0, 1.0);
	}
	else // 1
	{
		CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
	}
	
	// Darw X
	CGContextSetLineWidth(context, 4);
	
	CGContextMoveToPoint(context, 10, 22);
	CGContextAddLineToPoint(context, 30, 2);
	
	CGContextMoveToPoint(context, 10, 2);
	CGContextAddLineToPoint(context, 30, 22);
	
	CGContextStrokePath(context);
}

- (void)touchesBegan:(NSSet*) touches withEvent:(UIEvent*)event
{
	// WARNING: HACK Attack!!!!
	//
	// These three player touch methods are hacked so that only the first player
	// moved in a multi touch situation gets sent up to the defense view.
	// I think the better way to do this is to only consider touches[0], 
	// which I believe returns only the first touch. As opposed to the way
	// I do it now which is to consider "anyObject" from the touch array!
	//
	
	if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		int playerCurrentlyMoving = [(id<PlayerMover>)[self superview] getPlayerCurrentlyMoving];
		
		if (playerCurrentlyMoving == NO_POSITION_SELECTED)
		{
			[(id<PlayerMover>)[self superview] setPlayerCurrentlyMoving:myPosition];
			
			CGPoint point = [[touches anyObject] locationInView:self];
			CGPoint hitTestPoint = [[touches anyObject] locationInView:self.superview];
			
			// WARNING _ This is a HACK
			//
			// It turns out that one of the reasons extra defenders were appearing was that
			// the tappable area of the players extends BELOW the tappable area of the play
			// selection zones. So even though the play would get moved, no starting play
			// zone would get recorded. Then, when the move ended no play zone would get a
			// defender subtracted because there was no starting zone to decrement!!!!
			//
			// So, now I modify the hitTestPoint that I send to the defense view so that
			// the Y corrdinate should be well within the bounds of the tapped play
			// zone.
			//
			//In the future, the players should really just know what play zones they are
			// defending, instead of relying on checking their relative position on the
			// screen all the time!
			//
			hitTestPoint.y = hitTestPoint.y - point.y * .5;
		
			// I record this so that I can track the players movement across the screen
			myStartLocation = point;
		
			[(id<DefenseViewTouchEvents>)[self superview] playerTouchesBegan:hitTestPoint];
		}
	}
}

- (void)touchesMoved: (NSSet*)touches withEvent:(UIEvent*) event
{
	if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		int playerCurrentlyMoving = [(id<PlayerMover>)[self superview] getPlayerCurrentlyMoving];
		
		if (playerCurrentlyMoving == myPosition)
		{
			CGPoint movePoint = [[touches anyObject] locationInView:self];
			CGPoint hitTestPoint = [[touches anyObject] locationInView:self.superview];
		
			CGRect frame = [self frame];
		
			frame.origin.x += movePoint.x - myStartLocation.x;
			frame.origin.y += movePoint.y - myStartLocation.y;
		
			[self setFrame:frame];
		
			[(id<DefenseViewTouchEvents>)[self superview] playerTouchesMoved:hitTestPoint];
		}
	}
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	
    if ([GameManager getGameState] == WAITING_TO_PICK_DEFENSIVE_STANCE)
	{
		int playerCurrentlyMoving = [(id<PlayerMover>)[self superview] getPlayerCurrentlyMoving];
		
		if (playerCurrentlyMoving == myPosition)
		{
			CGPoint hitTestPoint = [[touches anyObject] locationInView:self.superview];
	
			[(id<DefenseViewTouchEvents>)self.superview playerTouchesEnded:hitTestPoint];
			
			[(id<PlayerMover>)self.superview setPlayerCurrentlyMoving:NO_POSITION_SELECTED];
		}
	}

	[self.superview playerTapped:myPosition];
}

- (void)dealloc
{
    [super dealloc];
}

@end
