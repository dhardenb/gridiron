
#import "OffenseView.h"

@implementation OffenseView

-(int)getLocationBeingTapped
{
	return myLocationBeingTapped;
}

-(void)setLocationBeingTapped:(int)location
{
	myLocationBeingTapped = location;
}

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
		self.alpha = 0.0;
		isVisable = FALSE;
		myLocationBeingTapped = 0;
        
        [self setupLocationSelectors];
        [self setupPlayers];
        [self setupZoneSelectors];
    }
	
    return self;
}

- (void)setupLocationSelectors
{
    myLeftWideReceiverLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_WIDE_RECEIVER]];
    myLeftWideReceiverLocation.backgroundColor = [UIColor clearColor];
    myLeftWideReceiverLocation.userInteractionEnabled = YES;
    myLeftWideReceiverLocation.position = LEFT_WIDE_RECEIVER;
    [self addSubview:myLeftWideReceiverLocation];
    [myLeftWideReceiverLocation release];
    
    myLeftSplitEndLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_SPLIT_END]];
    myLeftSplitEndLocation.backgroundColor = [UIColor clearColor];
    myLeftSplitEndLocation.userInteractionEnabled = YES;
    myLeftSplitEndLocation.position = LEFT_SPLIT_END;
    [self addSubview:myLeftSplitEndLocation];
    [myLeftSplitEndLocation release];
    
    myLeftTightEndLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_TIGHT_END]];
    myLeftTightEndLocation.backgroundColor = [UIColor clearColor];
    myLeftTightEndLocation.userInteractionEnabled = YES;
    myLeftTightEndLocation.position = LEFT_TIGHT_END;
    [self addSubview:myLeftTightEndLocation];
    [myLeftTightEndLocation release];
    
    myRightTightEndLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_TIGHT_END]];
    myRightTightEndLocation.backgroundColor = [UIColor clearColor];
    myRightTightEndLocation.userInteractionEnabled = YES;
    myRightTightEndLocation.position = RIGHT_TIGHT_END;
    [self addSubview:myRightTightEndLocation];
    [myRightTightEndLocation release];
    
    myRightSplitEndLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_SPLIT_END]];
    myRightSplitEndLocation.backgroundColor = [UIColor clearColor];
    myRightSplitEndLocation.userInteractionEnabled = YES;
    myRightSplitEndLocation.position = RIGHT_SPLIT_END;
    [self addSubview:myRightSplitEndLocation];
    [myRightSplitEndLocation release];
    
    myRightWideReceiverLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_WIDE_RECEIVER]];
    myRightWideReceiverLocation.backgroundColor = [UIColor clearColor];
    myRightWideReceiverLocation.userInteractionEnabled = YES;
    myRightWideReceiverLocation.position = RIGHT_WIDE_RECEIVER;
    [self addSubview:myRightWideReceiverLocation];
    [myRightWideReceiverLocation release];
    
    myQuarterBackLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:QUARTER_BACK]];
    myQuarterBackLocation.backgroundColor = [UIColor clearColor];
    myQuarterBackLocation.userInteractionEnabled = YES;
    myQuarterBackLocation.position = QUARTER_BACK;
    [self addSubview:myQuarterBackLocation];
    [myQuarterBackLocation release];
    
    myFullBackLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:FULL_BACK]];
    myFullBackLocation.backgroundColor = [UIColor clearColor];
    myFullBackLocation.userInteractionEnabled = YES;
    myFullBackLocation.position = FULL_BACK;
    [self addSubview:myFullBackLocation];
    [myFullBackLocation release];
    
    myLeftHalfBackLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_HALF_BACK]];
    myLeftHalfBackLocation.backgroundColor = [UIColor clearColor];
    myLeftHalfBackLocation.userInteractionEnabled = YES;
    myLeftHalfBackLocation.position = LEFT_HALF_BACK;
    [self addSubview:myLeftHalfBackLocation];
    [myLeftHalfBackLocation release];
    
    myRightHalfBackLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_HALF_BACK]];
    myRightHalfBackLocation.backgroundColor = [UIColor clearColor];
    myRightHalfBackLocation.userInteractionEnabled = YES;
    myRightHalfBackLocation.position = RIGHT_HALF_BACK;
    [self addSubview:myRightHalfBackLocation];
    [myRightHalfBackLocation release];
    
    myTailBackLocation = [[LocationSelectorView alloc] initWithFrame:[self getLocationRectForPosition:TAIL_BACK]];
    myTailBackLocation.backgroundColor = [UIColor clearColor];
    myTailBackLocation.userInteractionEnabled = YES;
    myTailBackLocation.position = TAIL_BACK;
    [self addSubview:myTailBackLocation];
    [myTailBackLocation release];
}

- (void)setupPlayers
{
    myLeftWideReceiver = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_WIDE_RECEIVER]];
    myLeftWideReceiver.backgroundColor = [UIColor clearColor];
    myLeftWideReceiver.userInteractionEnabled = NO;
    [myLeftWideReceiver setPosition:LEFT_WIDE_RECEIVER];
    [self addSubview:myLeftWideReceiver];
    [myLeftWideReceiver release];
    
    myLeftSplitEnd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_SPLIT_END]];
    myLeftSplitEnd.backgroundColor = [UIColor clearColor];
    myLeftSplitEnd.userInteractionEnabled = NO;
    [myLeftSplitEnd setPosition:LEFT_SPLIT_END];
    [self addSubview:myLeftSplitEnd];
    [myLeftSplitEnd release];
    
    myLeftTightEnd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_TIGHT_END]];
    myLeftTightEnd.backgroundColor = [UIColor clearColor];
    myLeftTightEnd.userInteractionEnabled = NO;
    [myLeftTightEnd setPosition:LEFT_TIGHT_END];
    [self addSubview:myLeftTightEnd];
    [myLeftTightEnd release];
    
    myLeftTackle = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_TACKLE]];
    myLeftTackle.backgroundColor = [UIColor clearColor];
    myLeftTackle.userInteractionEnabled = NO;
    [myLeftTackle setPosition:LEFT_TACKLE];
    [self addSubview:myLeftTackle];
    [myLeftTackle release];
    
    myLeftGaurd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_GAURD]];
    myLeftGaurd.backgroundColor = [UIColor clearColor];
    myLeftGaurd.userInteractionEnabled = NO;
    [myLeftGaurd setPosition:LEFT_GAURD];
    [self addSubview:myLeftGaurd];
    [myLeftGaurd release];
    
    myCenter = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:CENTER]];
    myCenter.backgroundColor = [UIColor clearColor];
    myCenter.userInteractionEnabled = NO;
    [myCenter setPosition:CENTER];
    [self addSubview:myCenter];
    [myCenter release];
    
    myRightGaurd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_GAURD]];
    myRightGaurd.backgroundColor = [UIColor clearColor];
    myRightGaurd.userInteractionEnabled = NO;
    [myRightGaurd setPosition:RIGHT_GAURD];
    [self addSubview:myRightGaurd];
    [myRightGaurd release];
    
    myRightTackle = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_TACKLE]];
    myRightTackle.backgroundColor = [UIColor clearColor];
    myRightTackle.userInteractionEnabled = NO;
    [myRightTackle setPosition:RIGHT_TACKLE];
    [self addSubview:myRightTackle];
    [myRightTackle release];
    
    myRightTightEnd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_TIGHT_END]];
    myRightTightEnd.backgroundColor = [UIColor clearColor];
    myRightTightEnd.userInteractionEnabled = NO;
    [myRightTightEnd setPosition:RIGHT_TIGHT_END];
    [self addSubview:myRightTightEnd];
    [myRightTightEnd release];
    
    myRightSplitEnd = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_SPLIT_END]];
    myRightSplitEnd.backgroundColor = [UIColor clearColor];
    myRightSplitEnd.userInteractionEnabled = NO;
    [myRightSplitEnd setPosition:RIGHT_SPLIT_END];
    [self addSubview:myRightSplitEnd];
    [myRightSplitEnd release];
    
    myRightWideReceiver = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_WIDE_RECEIVER]];
    myRightWideReceiver.backgroundColor = [UIColor clearColor];
    myRightWideReceiver.userInteractionEnabled = NO;
    [myRightWideReceiver setPosition:RIGHT_WIDE_RECEIVER];
    [self addSubview:myRightWideReceiver];
    [myRightWideReceiver release];
    
    myQuarterBack = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:QUARTER_BACK]];
    myQuarterBack.backgroundColor = [UIColor clearColor];
    myQuarterBack.userInteractionEnabled = NO;
    [myQuarterBack setPosition:QUARTER_BACK];
    [self addSubview:myQuarterBack];
    [myQuarterBack release];
    
    myFullBack = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:FULL_BACK]];
    myFullBack.backgroundColor = [UIColor clearColor];
    myFullBack.userInteractionEnabled = NO;
    [myFullBack setPosition:FULL_BACK];
    [self addSubview:myFullBack];
    [myFullBack release];
    
    myLeftHalfBack = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:LEFT_HALF_BACK]];
    myLeftHalfBack.backgroundColor = [UIColor clearColor];
    myLeftHalfBack.userInteractionEnabled = NO;
    [myLeftHalfBack setPosition:LEFT_HALF_BACK];
    [self addSubview:myLeftHalfBack];
    [myLeftHalfBack release];
    
    myRightHalfBack = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:RIGHT_HALF_BACK]];
    myRightHalfBack.backgroundColor = [UIColor clearColor];
    myRightHalfBack.userInteractionEnabled = NO;
    [myRightHalfBack setPosition:RIGHT_HALF_BACK];
    [self addSubview:myRightHalfBack];
    [myRightHalfBack release];
    
    myTailBack = [[PlayerView alloc] initWithFrame:[self getLocationRectForPosition:TAIL_BACK]];
    myTailBack.backgroundColor = [UIColor clearColor];
    myTailBack.userInteractionEnabled = NO;
    [myTailBack setPosition:TAIL_BACK];
    [self addSubview:myTailBack];
    [myTailBack release];
}

- (void)setupZoneSelectors
{
    myLeftWideReceiverTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:LEFT_WIDE_RECEIVER]];
    myLeftWideReceiverTarget.backgroundColor = [UIColor clearColor];
    myLeftWideReceiverTarget.userInteractionEnabled = NO;
    [self addSubview:myLeftWideReceiverTarget];
    [myLeftWideReceiverTarget release];
    
    myLeftSplitEndTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:LEFT_SPLIT_END]];
    myLeftSplitEndTarget.backgroundColor = [UIColor clearColor];
    myLeftSplitEndTarget.userInteractionEnabled = NO;
    [self addSubview:myLeftSplitEndTarget];
    [myLeftSplitEndTarget release];
    
    myLeftTightEndTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:LEFT_TIGHT_END]];
    myLeftTightEndTarget.backgroundColor = [UIColor clearColor];
    myLeftTightEndTarget.userInteractionEnabled = NO;
    [self addSubview:myLeftTightEndTarget];
    [myLeftTightEndTarget release];
    
    myRightTightEndTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:RIGHT_TIGHT_END]];
    myRightTightEndTarget.backgroundColor = [UIColor clearColor];
    myRightTightEndTarget.userInteractionEnabled = NO;
    [self addSubview:myRightTightEndTarget];
    [myRightTightEndTarget release];
    
    myRightSplitEndTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:RIGHT_SPLIT_END]];
    myRightSplitEndTarget.backgroundColor = [UIColor clearColor];
    myRightSplitEndTarget.userInteractionEnabled = NO;
    [self addSubview:myRightSplitEndTarget];
    [myRightSplitEndTarget release];
    
    myRightWideReceiverTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:RIGHT_WIDE_RECEIVER]];
    myRightWideReceiverTarget.backgroundColor = [UIColor clearColor];
    myRightWideReceiverTarget.userInteractionEnabled = NO;
    [self addSubview:myRightWideReceiverTarget];
    [myRightWideReceiverTarget release];
    
    myQuarterBackTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:QUARTER_BACK]];
    myQuarterBackTarget.backgroundColor = [UIColor clearColor];
    myQuarterBackTarget.userInteractionEnabled = NO;
    [self addSubview:myQuarterBackTarget];
    [myQuarterBackTarget release];
    
    myFullBackTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:FULL_BACK]];
    myFullBackTarget.backgroundColor = [UIColor clearColor];
    myFullBackTarget.userInteractionEnabled = NO;
    [self addSubview:myFullBackTarget];
    [myFullBackTarget release];
    
    myLeftHalfBackTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:LEFT_HALF_BACK]];
    myLeftHalfBackTarget.backgroundColor = [UIColor clearColor];
    myLeftHalfBackTarget.userInteractionEnabled = NO;
    [self addSubview:myLeftHalfBackTarget];
    [myLeftHalfBackTarget release];
    
    myRightHalfBackTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:RIGHT_HALF_BACK]];
    myRightHalfBackTarget.backgroundColor = [UIColor clearColor];
    myRightHalfBackTarget.userInteractionEnabled = NO;
    [self addSubview:myRightHalfBackTarget];
    [myRightHalfBackTarget release];
    
    myTailBackTarget = [[ZoneSelector alloc] initWithFrame:[self getLocationRectForZoneSelectors:TAIL_BACK]];
    myTailBackTarget.backgroundColor = [UIColor clearColor];
    myTailBackTarget.userInteractionEnabled = NO;
    [self addSubview:myTailBackTarget];
    [myTailBackTarget release]; 
}

- (void)drawRect:(CGRect)rect
{
	[self resetEachPlayersCurrentTeam];
	[self movePlayersIntoCurrentFormation];
	[self resetSelectorsAndTargets];
}

- (void)resetEachPlayersCurrentTeam
{
	int team = 0;
	
	if ([GameManager getPossession] == 0)
		team = HOME_TEAM;
	else
		team = AWAY_TEAM;
	
	myLeftWideReceiver.team = team;
	myLeftSplitEnd.team = team;
	myLeftTightEnd.team = team;
	myLeftTackle.team = team;
	myLeftGaurd.team = team;
	myCenter.team = team;
	myRightGaurd.team = team;
	myRightTackle.team = team;
	myRightTightEnd.team = team;
	myRightSplitEnd.team = team;
	myRightWideReceiver.team = team;
	myQuarterBack.team = team;
	myFullBack.team = team;
	myLeftHalfBack.team = team;
	myRightHalfBack.team = team;
	myTailBack.team = team;
}

- (void)movePlayersIntoCurrentFormation
{
	// Set up the formation based on the game state
	CGRect frame;
	
	// Ensures that for special teams formations the appropriate
	// positions are displayed
	myLeftWideReceiver.hidden = FALSE;
	myLeftSplitEnd.hidden = TRUE;
	myLeftTightEnd.hidden = TRUE;
	myLeftTackle.hidden = FALSE;
	myLeftGaurd.hidden = FALSE;
	myCenter.hidden = FALSE;
	myRightGaurd.hidden = FALSE;
	myRightTackle.hidden = FALSE;
	myRightTightEnd.hidden = FALSE;
	myRightSplitEnd.hidden = TRUE;
	myRightWideReceiver.hidden = FALSE;
	myQuarterBack.hidden = FALSE;
	myFullBack.hidden = FALSE;
	myLeftHalfBack.hidden = TRUE;
	myRightHalfBack.hidden = TRUE;
	myTailBack.hidden = FALSE;
    
	if ([GameManager getGameState] == GAME_MENU_STATE)
	{
		frame = [myLeftWideReceiver frame];
		frame.origin.x = 150.0;
		frame.origin.y = 270.0;
		[myLeftWideReceiver setFrame:frame];
		
		frame = [myLeftTackle frame];
		frame.origin.x = 170.0;
		frame.origin.y = 250.0;
		[myLeftTackle setFrame:frame];
		
		frame = [myLeftGaurd frame];
		frame.origin.x = 190.0;
		frame.origin.y = 230.0;
		[myLeftGaurd setFrame:frame];
		
		frame = [myCenter frame];
		frame.origin.x = 170.0;
		frame.origin.y = 290.0;
		[myCenter setFrame:frame];
		
		frame = [myRightGaurd frame];
		frame.origin.x = 250.0;
		frame.origin.y = 230.0;
		[myRightGaurd setFrame:frame];
		
		frame = [myRightTackle frame];
		frame.origin.x = 270.0;
		frame.origin.y = 250.0;
		[myRightTackle setFrame:frame];
		
		frame = [myRightTightEnd frame];
		frame.origin.x = 290.0;
		frame.origin.y = 270.0;
		[myRightTightEnd setFrame:frame];
		
		frame = [myRightWideReceiver frame];
		frame.origin.x = 270.0;
		frame.origin.y = 290.0;
		[myRightWideReceiver setFrame:frame];
		
		frame = [myQuarterBack frame];
		frame.origin.x = 220.0;
		frame.origin.y = 230.0;
		[myQuarterBack setFrame:frame];
		
		frame = [myFullBack frame];
		frame.origin.x = 240.0;
		frame.origin.y = 290.0;
		[myFullBack setFrame:frame];
		
		frame = [myTailBack frame];
		frame.origin.x = 200.0;
		frame.origin.y = 290.0;
		[myTailBack setFrame:frame];
	}
	else if	([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 (([GameManager getAttackZoneSelected] == NORMAL_KICK_OFF) ||
			  ([GameManager getAttackZoneSelected] == SQUIB_KICK_OFF)))
	{
		frame = [myLeftWideReceiver frame];
		frame.origin.x = 8.0;
		frame.origin.y = 220.0;
		[myLeftWideReceiver setFrame:frame];
		
		frame = [myLeftTackle frame];
		frame.origin.x = 46.0;
		frame.origin.y = 220.0;
		[myLeftTackle setFrame:frame];
		
		frame = [myLeftGaurd frame];
		frame.origin.x = 84.0;
		frame.origin.y = 220.0;
		[myLeftGaurd setFrame:frame];
		
		frame = [myCenter frame];
		frame.origin.x = 122.0;
		frame.origin.y = 220.0;
		[myCenter setFrame:frame];
		
		frame = [myRightGaurd frame];
		frame.origin.x = 160.0;
		frame.origin.y = 220.0;
		[myRightGaurd setFrame:frame];
		
		frame = [myRightTackle frame];
		frame.origin.x = 280.0;
		frame.origin.y = 220.0;
		[myRightTackle setFrame:frame];
		
		frame = [myRightTightEnd frame];
		frame.origin.x = 318.0;
		frame.origin.y = 220.0;
		[myRightTightEnd setFrame:frame];
		
		frame = [myRightWideReceiver frame];
		frame.origin.x = 356.0;
		frame.origin.y = 220.0;
		[myRightWideReceiver setFrame:frame];
		
		frame = [myQuarterBack frame];
		frame.origin.x = 394.0;
		frame.origin.y = 220.0;
		[myQuarterBack setFrame:frame];
		
		frame = [myFullBack frame];
		frame.origin.x = 432.0;
		frame.origin.y = 220.0;
		[myFullBack setFrame:frame];
		
		// Kicker
		frame = [myTailBack frame];
		frame.origin.x = 200.0;
		frame.origin.y = 270.0;
		[myTailBack setFrame:frame];
	}
	else if	([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 [GameManager getAttackZoneSelected] == ONSIDE_KICK_OFF)
	{
		frame = [myLeftWideReceiver frame];
		frame.origin.x = 240.0;
		frame.origin.y = 220.0;
		[myLeftWideReceiver setFrame:frame];
		
		frame = [myLeftTackle frame];
		frame.origin.x = 265.0;
		frame.origin.y = 220.0;
		[myLeftTackle setFrame:frame];
		
		frame = [myLeftGaurd frame];
		frame.origin.x = 290.0;
		frame.origin.y = 220.0;
		[myLeftGaurd setFrame:frame];
		
		frame = [myCenter frame];
		frame.origin.x = 315.0;
		frame.origin.y = 220.0;
		[myCenter setFrame:frame];
		
		frame = [myRightGaurd frame];
		frame.origin.x = 340.0;
		frame.origin.y = 220.0;
		[myRightGaurd setFrame:frame];
		
		frame = [myRightTackle frame];
		frame.origin.x = 365.0;
		frame.origin.y = 220.0;
		[myRightTackle setFrame:frame];
		
		frame = [myRightTightEnd frame];
		frame.origin.x = 390.0;
		frame.origin.y = 220.0;
		[myRightTightEnd setFrame:frame];
		
		frame = [myRightWideReceiver frame];
		frame.origin.x = 415.0;
		frame.origin.y = 220.0;
		[myRightWideReceiver setFrame:frame];
		
		frame = [myQuarterBack frame];
		frame.origin.x = 440.0;
		frame.origin.y = 220.0;
		[myQuarterBack setFrame:frame];
		
		frame = [myFullBack frame];
		frame.origin.x = 160.0;
		frame.origin.y = 220.0;
		[myFullBack setFrame:frame];
		
		// Kicker
		frame = [myTailBack frame];
		frame.origin.x = 200.0;
		frame.origin.y = 270.0;
		[myTailBack setFrame:frame];
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 ([GameManager getAttackZoneSelected] == NORMAL_FIELD_GOAL ||
			  [GameManager getAttackZoneSelected] == EXTRA_POINT))
	{
		frame = [myLeftWideReceiver frame];
		frame.origin.x = 100.0;
		frame.origin.y = 210.0;
		[myLeftWideReceiver setFrame:frame];
		
		frame = [myLeftTackle frame];
		frame.origin.x = 140.0;
		frame.origin.y = 210.0;
		[myLeftTackle setFrame:frame];
		
		frame = [myLeftGaurd frame];
		frame.origin.x = 180.0;
		frame.origin.y = 210.0;
		[myLeftGaurd setFrame:frame];
		
		frame = [myCenter frame];
		frame.origin.x = 220.0;
		frame.origin.y = 210.0;
		[myCenter setFrame:frame];
		
		frame = [myRightGaurd frame];
		frame.origin.x = 260.0;
		frame.origin.y = 210.0;
		[myRightGaurd setFrame:frame];
		
		frame = [myRightTackle frame];
		frame.origin.x = 300.0;
		frame.origin.y = 210.0;
		[myRightTackle setFrame:frame];
		
		frame = [myRightTightEnd frame];
		frame.origin.x = 340.0;
		frame.origin.y = 210.0;
		[myRightTightEnd setFrame:frame];
		
		// Right Wing Guy
		frame = [myRightWideReceiver frame];
		frame.origin.x = 370.0;
		frame.origin.y = 220.0;
		[myRightWideReceiver setFrame:frame];
		
		// Left Wing Guy
		frame = [myQuarterBack frame];
		frame.origin.x = 70.0;
		frame.origin.y = 220.0;
		[myQuarterBack setFrame:frame];
		
		// Holder
		frame = [myFullBack frame];
		frame.origin.x = 240.0;
		frame.origin.y = 260.0;
		[myFullBack setFrame:frame];
		
		// Kicker
		frame = [myTailBack frame];
		frame.origin.x = 200.0;
		frame.origin.y = 290.0;
		[myTailBack setFrame:frame];
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL &&
			 [GameManager getAttackZoneSelected] == NORMAL_PUNT)
	{
		frame = [myLeftWideReceiver frame];
		frame.origin.x = 100.0;
		frame.origin.y = 220.0;
		[myLeftWideReceiver setFrame:frame];
		
		frame = [myLeftTackle frame];
		frame.origin.x = 140.0;
		frame.origin.y = 210.0;
		[myLeftTackle setFrame:frame];
		
		frame = [myLeftGaurd frame];
		frame.origin.x = 180.0;
		frame.origin.y = 210.0;
		[myLeftGaurd setFrame:frame];
		
		frame = [myCenter frame];
		frame.origin.x = 220.0;
		frame.origin.y = 210.0;
		[myCenter setFrame:frame];
		
		frame = [myRightGaurd frame];
		frame.origin.x = 260.0;
		frame.origin.y = 210.0;
		[myRightGaurd setFrame:frame];
		
		frame = [myRightTackle frame];
		frame.origin.x = 300.0;
		frame.origin.y = 210.0;
		[myRightTackle setFrame:frame];
		
		frame = [myRightTightEnd frame];
		frame.origin.x = 340.0;
		frame.origin.y = 220.0;
		[myRightTightEnd setFrame:frame];
		
		// Right Wing Guy
		frame = [myRightWideReceiver frame];
		frame.origin.x = 432.0;
		frame.origin.y = 210.0;
		[myRightWideReceiver setFrame:frame];
		
		// Left Wing Guy
		frame = [myQuarterBack frame];
		frame.origin.x = 8.0;
		frame.origin.y = 210.0;
		[myQuarterBack setFrame:frame];
		
		// Holder
		frame = [myFullBack frame];
		frame.origin.x = 200.0;
		frame.origin.y = 250.0;
		[myFullBack setFrame:frame];
		
		// Punter
		frame = [myTailBack frame];
		frame.origin.x = 220.0;
		frame.origin.y = 290.0;
		[myTailBack setFrame:frame];
	}
	else // Normal Offensive Formation
	{
		[myLeftWideReceiver setFrame:[self getLocationRectForPosition:LEFT_WIDE_RECEIVER]];
		[myLeftSplitEnd setFrame:[self getLocationRectForPosition:LEFT_SPLIT_END]];
		[myLeftTightEnd setFrame:[self getLocationRectForPosition:LEFT_TIGHT_END]];
        [myLeftTackle setFrame:[self getLocationRectForPosition:LEFT_TACKLE]];
        [myLeftGaurd setFrame:[self getLocationRectForPosition:LEFT_GAURD]];
        [myCenter setFrame:[self getLocationRectForPosition:CENTER]];
        [myRightGaurd setFrame:[self getLocationRectForPosition:RIGHT_GAURD]];
        [myRightTackle setFrame:[self getLocationRectForPosition:RIGHT_TACKLE]];
        [myRightTightEnd setFrame:[self getLocationRectForPosition:RIGHT_TIGHT_END]];
        [myRightSplitEnd setFrame:[self getLocationRectForPosition:RIGHT_SPLIT_END]];
        [myRightWideReceiver setFrame:[self getLocationRectForPosition:RIGHT_WIDE_RECEIVER]];
        [myQuarterBack setFrame:[self getLocationRectForPosition:QUARTER_BACK]];
        [myFullBack setFrame:[self getLocationRectForPosition:FULL_BACK]];
        [myLeftHalfBack setFrame:[self getLocationRectForPosition:LEFT_HALF_BACK]];
        [myRightHalfBack setFrame:[self getLocationRectForPosition:RIGHT_HALF_BACK]];
        [myTailBack setFrame:[self getLocationRectForPosition:TAIL_BACK]];
		
		// Show all players currently "in the game"
		if ([OffensiveFormationData getLeftWideReceiver] == 1)
		{
			myLeftWideReceiver.hidden = FALSE;
		}
		else
		{
			myLeftWideReceiver.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getLeftSplitEnd] == 1)
		{
			myLeftSplitEnd.hidden = FALSE;
		}
		else
		{
			myLeftSplitEnd.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getLeftTightEnd] == 1)
		{
			myLeftTightEnd.hidden = FALSE;
		}
		else
		{
			myLeftTightEnd.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getRightTightEnd] == 1)
		{
			myRightTightEnd.hidden = FALSE;
		}
		else
		{
			myRightTightEnd.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getRightSplitEnd] == 1)
		{
			myRightSplitEnd.hidden = FALSE;
		}
		else
		{
			myRightSplitEnd.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getRightWideReceiver] == 1)
		{
			myRightWideReceiver.hidden = FALSE;
		}
		else
		{
			myRightWideReceiver.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getFullBack] == 1)
		{
			myFullBack.hidden = FALSE;
		}
		else
		{
			myFullBack.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getLeftHalfBack] == 1)
		{
			myLeftHalfBack.hidden = FALSE;
		}
		else
		{
			myLeftHalfBack.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getRightHalfBack] == 1)
		{
			myRightHalfBack.hidden = FALSE;
		}
		else
		{
			myRightHalfBack.hidden = TRUE;
		}
		
		if ([OffensiveFormationData getTailBack] == 1)
		{
			myTailBack.hidden = FALSE;
		}
		else
		{
			myTailBack.hidden = TRUE;
		}
	}
	
	[myLeftWideReceiver setNeedsDisplay];
	[myLeftSplitEnd setNeedsDisplay];
	[myLeftTightEnd setNeedsDisplay];
	[myLeftTackle setNeedsDisplay];
	[myLeftGaurd setNeedsDisplay];
	[myCenter setNeedsDisplay];
	[myRightGaurd setNeedsDisplay];
	[myRightTackle setNeedsDisplay];
	[myRightTightEnd setNeedsDisplay];
	[myRightSplitEnd setNeedsDisplay];
	[myRightWideReceiver setNeedsDisplay];
	[myQuarterBack setNeedsDisplay];
	[myFullBack setNeedsDisplay];
	[myLeftHalfBack setNeedsDisplay];
	[myRightHalfBack setNeedsDisplay];
	[myTailBack setNeedsDisplay];
}

- (void)resetSelectorsAndTargets
{
	myLeftWideReceiver.userInteractionEnabled = YES;
	myLeftSplitEnd.userInteractionEnabled = YES;
	myLeftTightEnd.userInteractionEnabled = YES;
	myRightTightEnd.userInteractionEnabled = YES;
	myRightSplitEnd.userInteractionEnabled = YES;
	myRightWideReceiver.userInteractionEnabled = YES;
	myQuarterBack.userInteractionEnabled = YES;
	myFullBack.userInteractionEnabled = YES;
	myLeftHalfBack.userInteractionEnabled = YES;
	myRightHalfBack.userInteractionEnabled = YES;
	myTailBack.userInteractionEnabled = YES;
	
	myLeftWideReceiverTarget.hidden = TRUE;
	myLeftSplitEndTarget.hidden = TRUE;
	myLeftTightEndTarget.hidden = TRUE;
	myRightTightEndTarget.hidden = TRUE;
	myRightSplitEndTarget.hidden = TRUE;
	myRightWideReceiverTarget.hidden = TRUE;
	myQuarterBackTarget.hidden = TRUE;
	myFullBackTarget.hidden = TRUE;
	myLeftHalfBackTarget.hidden = TRUE;
	myRightHalfBackTarget.hidden = TRUE;
	myTailBackTarget.hidden = TRUE;
	
	// Show all locations of players not currently "in the game"
	if ([GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE && [GameManager getOffensivePositionSelected] != QUARTER_BACK)
	{
		if ([OffensiveFormationData getLeftWideReceiver] == 1)
		{
			myLeftWideReceiverLocation.hidden = TRUE;
		}
		else
		{
			myLeftWideReceiverLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getLeftSplitEnd] == 1)
		{
			myLeftSplitEndLocation.hidden = TRUE;
		}
		else
		{
			myLeftSplitEndLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getLeftTightEnd] == 1)
		{
			myLeftTightEndLocation.hidden = TRUE;
		}
		else
		{
			myLeftTightEndLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getRightTightEnd] == 1)
		{
			myRightTightEndLocation.hidden = TRUE;
		}
		else
		{
			myRightTightEndLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getRightSplitEnd] == 1)
		{
			myRightSplitEndLocation.hidden = TRUE;
		}
		else
		{
			myRightSplitEndLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getRightWideReceiver] == 1)
		{
			myRightWideReceiverLocation.hidden = TRUE;
		}
		else
		{
			myRightWideReceiverLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getFullBack] == 1)
		{
			myFullBackLocation.hidden = TRUE;
		}
		else
		{
			myFullBackLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getLeftHalfBack] == 1)
		{
			myLeftHalfBackLocation.hidden = TRUE;
		}
		else
		{
			myLeftHalfBackLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getRightHalfBack] == 1)
		{
			myRightHalfBackLocation.hidden = TRUE;
		}
		else
		{
			myRightHalfBackLocation.hidden = FALSE;
		}
		
		if ([OffensiveFormationData getTailBack] == 1)
		{
			myTailBackLocation.hidden = TRUE;
		}
		else
		{
			myTailBackLocation.hidden = FALSE;
		}
	}
	else
	{
		myLeftWideReceiverLocation.hidden = TRUE;
		myLeftSplitEndLocation.hidden = TRUE;
		myLeftTightEndLocation.hidden = TRUE;
		myRightTightEndLocation.hidden = TRUE;
		myRightSplitEndLocation.hidden = TRUE;
		myRightWideReceiverLocation.hidden = TRUE;
		myQuarterBackLocation.hidden = TRUE;
		myFullBackLocation.hidden = TRUE;
		myLeftHalfBackLocation.hidden = TRUE;
		myRightHalfBackLocation.hidden = TRUE;
		myTailBackLocation.hidden = TRUE;
	}
	
	if ([GameManager getGameState] == WAITING_TO_PICK_OFFENSIVE_PLAYER || [GameManager getGameState] == WAITING_TO_PICK_ATTACK_ZONE)
	{		
		int offensivePositionSelected = [GameManager getOffensivePositionSelected];
		
		switch (offensivePositionSelected)
		{
			case NO_POSITION_SELECTED:
			{
				myLeftWideReceiverTarget.hidden = TRUE;
				myLeftSplitEndTarget.hidden = TRUE;
				myLeftTightEndTarget.hidden = TRUE;
				myRightTightEndTarget.hidden = TRUE;
				myRightSplitEndTarget.hidden = TRUE;
				myRightWideReceiverTarget.hidden = TRUE;
				myQuarterBackTarget.hidden = TRUE;
				myFullBackTarget.hidden = TRUE;
				myLeftHalfBackTarget.hidden = TRUE;
				myRightHalfBackTarget.hidden = TRUE;
				myTailBackTarget.hidden = TRUE;
				
				break;
			}
			case LEFT_WIDE_RECEIVER:
			{
				myLeftWideReceiverTarget.hidden = FALSE;
				break;
			}
			case LEFT_SPLIT_END:
			{
				myLeftSplitEndTarget.hidden = FALSE;
				break;
			}
			case LEFT_TIGHT_END:
			{
				myLeftTightEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_TIGHT_END:
			{
				myRightTightEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_SPLIT_END:
			{
				myRightSplitEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_WIDE_RECEIVER:
			{
				myRightWideReceiverTarget.hidden = FALSE;
				break;
			}
			case QUARTER_BACK:
			{
				myQuarterBackTarget.hidden = FALSE;
				break;
			}
			case FULL_BACK:
			{
				myFullBackTarget.hidden = FALSE;
				break;
			}
			case LEFT_HALF_BACK:
			{
				myLeftHalfBackTarget.hidden = FALSE;
				break;
			}
			case RIGHT_HALF_BACK:
			{
				myRightHalfBackTarget.hidden = FALSE;
				break;
			}
			case TAIL_BACK:
			{
				myTailBackTarget.hidden = FALSE;
				break;
			}
		}
	}
	else if ([GameManager getGameState] == WAITING_TO_HIKE_BALL)
	{
		myLeftWideReceiver.userInteractionEnabled = NO;
		myLeftSplitEnd.userInteractionEnabled = NO;
		myLeftTightEnd.userInteractionEnabled = NO;
		myRightTightEnd.userInteractionEnabled = NO;
		myRightSplitEnd.userInteractionEnabled = NO;
		myRightWideReceiver.userInteractionEnabled = NO;
		myQuarterBack.userInteractionEnabled = NO;
		myFullBack.userInteractionEnabled = NO;
		myLeftHalfBack.userInteractionEnabled = NO;
		myRightHalfBack.userInteractionEnabled = NO;
		myTailBack.userInteractionEnabled = NO;
		
		int offensivePositionSelected = [GameManager getOffensivePositionSelected];
		
		switch (offensivePositionSelected)
		{
			case LEFT_WIDE_RECEIVER:
			{
				myLeftWideReceiverTarget.hidden = FALSE;
				break;
			}
			case LEFT_SPLIT_END:
			{
				myLeftSplitEndTarget.hidden = FALSE;
				break;
			}
			case LEFT_TIGHT_END:
			{
				myLeftTightEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_TIGHT_END:
			{
				myRightTightEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_SPLIT_END:
			{
				myRightSplitEndTarget.hidden = FALSE;
				break;
			}
			case RIGHT_WIDE_RECEIVER:
			{
				myRightWideReceiverTarget.hidden = FALSE;
				break;
			}
			case QUARTER_BACK:
			{
				myQuarterBackTarget.hidden = FALSE;
				break;
			}
			case FULL_BACK:
			{
				myFullBackTarget.hidden = FALSE;
				break;
			}
			case LEFT_HALF_BACK:
			{
				myLeftHalfBackTarget.hidden = FALSE;
				break;
			}
			case RIGHT_HALF_BACK:
			{
				myRightHalfBackTarget.hidden = FALSE;
				break;
			}
			case TAIL_BACK:
			{
				myTailBackTarget.hidden = FALSE;
				break;
			}
		}
	}
	else
	{
		myLeftWideReceiver.userInteractionEnabled = NO;
		myLeftSplitEnd.userInteractionEnabled = NO;
		myLeftTightEnd.userInteractionEnabled = NO;
		myRightTightEnd.userInteractionEnabled = NO;
		myRightSplitEnd.userInteractionEnabled = NO;
		myRightWideReceiver.userInteractionEnabled = NO;
		myQuarterBack.userInteractionEnabled = NO;
		myFullBack.userInteractionEnabled = NO;
		myLeftHalfBack.userInteractionEnabled = NO;
		myRightHalfBack.userInteractionEnabled = NO;
		myTailBack.userInteractionEnabled = NO;
	}
}

- (CGRect)getLocationRectForPosition:(int)position
{
    NSString *path = [[NSBundle mainBundle] pathForResource: @"coordinates" ofType: @"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile: path];
    
    float xLocation;
    float yLocation;
    
    if (position == FOOTBALL)
    {
        xLocation = [[dict objectForKey: @"FOOTBALL_X"] intValue];
        yLocation = [[dict objectForKey: @"FOOTBALL_Y"] intValue];
    }
    else if (position == LEFT_WIDE_RECEIVER)
    {
        xLocation = [[dict objectForKey: @"LEFT_WIDE_RECEIVER_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_WIDE_RECEIVER_Y"] intValue];
    }
    else if (position == LEFT_SPLIT_END)
    {
        xLocation = [[dict objectForKey: @"LEFT_SPLIT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_SPLIT_END_Y"] intValue];
    }
    else if (position == LEFT_TIGHT_END)
    {
        xLocation = [[dict objectForKey: @"LEFT_TIGHT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_TIGHT_END_Y"] intValue];
    }
    else if (position == LEFT_TACKLE)
    {
        xLocation = [[dict objectForKey: @"LEFT_TACKLE_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_TACKLE_Y"] intValue];
    }
    else if (position == LEFT_GAURD)
    {
        xLocation = [[dict objectForKey: @"LEFT_GUARD_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_GUARD_Y"] intValue];
    }
    else if (position == CENTER)
    {
        xLocation = [[dict objectForKey: @"CENTER_X"] intValue];
        yLocation = [[dict objectForKey: @"CENTER_Y"] intValue];
    }
    else if (position == RIGHT_GAURD)
    {
        xLocation = [[dict objectForKey: @"RIGHT_GUARD_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_GUARD_Y"] intValue];
    }
    else if (position == RIGHT_TACKLE)
    {
        xLocation = [[dict objectForKey: @"RIGHT_TACKLE_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_TACKLE_Y"] intValue];
    }
    else if (position == RIGHT_TIGHT_END)
    {
        xLocation = [[dict objectForKey: @"RIGHT_TIGHT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_TIGHT_END_Y"] intValue];
    }
    else if (position == RIGHT_SPLIT_END)
    {
        xLocation = [[dict objectForKey: @"RIGHT_SPLIT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_SPLIT_END_Y"] intValue];
    }
    else if (position == RIGHT_WIDE_RECEIVER)
    {
        xLocation = [[dict objectForKey: @"RIGHT_WIDE_RECEIVER_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_WIDE_RECEIVER_Y"] intValue];
    }
    else if (position == QUARTER_BACK)
    {
        xLocation = [[dict objectForKey: @"QUARTER_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"QUARTER_BACK_Y"] intValue];
    }
    else if (position == FULL_BACK)
    {
        xLocation = [[dict objectForKey: @"FULL_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"FULL_BACK_Y"] intValue];
    }
    else if (position == LEFT_HALF_BACK)
    {
        xLocation = [[dict objectForKey: @"LEFT_HALF_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_HALF_BACK_Y"] intValue];
    }
    else if (position == RIGHT_HALF_BACK)
    {
        xLocation = [[dict objectForKey: @"RIGHT_HALF_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_HALF_BACK_Y"] intValue];
    }
    else if (position == TAIL_BACK)
    {
        xLocation = [[dict objectForKey: @"TAIL_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"TAIL_BACK_Y"] intValue];
    }
    
    
    return CGRectMake(xLocation,
                      yLocation,
                      40,
                      40);
}

- (CGRect)getLocationRectForZoneSelectors:(int)position
{
    NSString *path = [[NSBundle mainBundle] pathForResource: @"coordinates" ofType: @"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile: path];
    
    float xLocation;
    float yLocation;
    
    if (position == FOOTBALL)
    {
        xLocation = [[dict objectForKey: @"FOOTBALL_X"] intValue];
        yLocation = [[dict objectForKey: @"FOOTBALL_Y"] intValue];
    }
    else if (position == LEFT_WIDE_RECEIVER)
    {
        xLocation = [[dict objectForKey: @"LEFT_WIDE_RECEIVER_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_WIDE_RECEIVER_Y"] intValue];
    }
    else if (position == LEFT_SPLIT_END)
    {
        xLocation = [[dict objectForKey: @"LEFT_SPLIT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_SPLIT_END_Y"] intValue];
    }
    else if (position == LEFT_TIGHT_END)
    {
        xLocation = [[dict objectForKey: @"LEFT_TIGHT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_TIGHT_END_Y"] intValue];
    }
    else if (position == LEFT_TACKLE)
    {
        xLocation = [[dict objectForKey: @"LEFT_TACKLE_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_TACKLE_Y"] intValue];
    }
    else if (position == LEFT_GAURD)
    {
        xLocation = [[dict objectForKey: @"LEFT_GUARD_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_GUARD_Y"] intValue];
    }
    else if (position == CENTER)
    {
        xLocation = [[dict objectForKey: @"CENTER_X"] intValue];
        yLocation = [[dict objectForKey: @"CENTER_Y"] intValue];
    }
    else if (position == RIGHT_GAURD)
    {
        xLocation = [[dict objectForKey: @"RIGHT_GUARD_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_GUARD_Y"] intValue];
    }
    else if (position == RIGHT_TACKLE)
    {
        xLocation = [[dict objectForKey: @"RIGHT_TACKLE_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_TACKLE_Y"] intValue];
    }
    else if (position == RIGHT_TIGHT_END)
    {
        xLocation = [[dict objectForKey: @"RIGHT_TIGHT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_TIGHT_END_Y"] intValue];
    }
    else if (position == RIGHT_SPLIT_END)
    {
        xLocation = [[dict objectForKey: @"RIGHT_SPLIT_END_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_SPLIT_END_Y"] intValue];
    }
    else if (position == RIGHT_WIDE_RECEIVER)
    {
        xLocation = [[dict objectForKey: @"RIGHT_WIDE_RECEIVER_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_WIDE_RECEIVER_Y"] intValue];
    }
    else if (position == QUARTER_BACK)
    {
        xLocation = [[dict objectForKey: @"QUARTER_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"QUARTER_BACK_Y"] intValue];
    }
    else if (position == FULL_BACK)
    {
        xLocation = [[dict objectForKey: @"FULL_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"FULL_BACK_Y"] intValue];
    }
    else if (position == LEFT_HALF_BACK)
    {
        xLocation = [[dict objectForKey: @"LEFT_HALF_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"LEFT_HALF_BACK_Y"] intValue];
    }
    else if (position == RIGHT_HALF_BACK)
    {
        xLocation = [[dict objectForKey: @"RIGHT_HALF_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"RIGHT_HALF_BACK_Y"] intValue];
    }
    else if (position == TAIL_BACK)
    {
        xLocation = [[dict objectForKey: @"TAIL_BACK_X"] intValue];
        yLocation = [[dict objectForKey: @"TAIL_BACK_Y"] intValue];
    }
    
    
    return CGRectMake(xLocation,
                      yLocation - 10,
                      40,
                      40);
}

- (void)playerTapped:(int)playerView
{
	[self.nextResponder playerTapped:playerView];
}

- (void)locationTapped:(int)locationSelected
{
	int offensivePositionSelected = [GameManager getOffensivePositionSelected];
	
	if (offensivePositionSelected == LEFT_WIDE_RECEIVER)
	{
		[OffensiveFormationData setLeftWideReceiver:0];
	}
	else if (offensivePositionSelected == LEFT_SPLIT_END)
	{
		[OffensiveFormationData setLeftSplitEnd:0];
	}
	else if (offensivePositionSelected == LEFT_TIGHT_END)
	{
		[OffensiveFormationData setLeftTightEnd:0];
	}
	else if (offensivePositionSelected == RIGHT_TIGHT_END)
	{
		[OffensiveFormationData setRightTightEnd:0];
	}
	else if (offensivePositionSelected == RIGHT_SPLIT_END)
	{
		[OffensiveFormationData setRightSplitEnd:0];
	}
	else if (offensivePositionSelected == RIGHT_WIDE_RECEIVER)
	{
		[OffensiveFormationData setRightWideReceiver:0];
	}
	else if (offensivePositionSelected == QUARTER_BACK)
	{
		[OffensiveFormationData setQuarterBack:0];
	}
	else if (offensivePositionSelected == FULL_BACK)
	{
		[OffensiveFormationData setFullBack:0];
	}
	else if (offensivePositionSelected == LEFT_HALF_BACK)
	{
		[OffensiveFormationData setLeftHalfBack:0];
	}
	else if (offensivePositionSelected == RIGHT_HALF_BACK)
	{
		[OffensiveFormationData setRightHalfBack:0];
	}
	else if (offensivePositionSelected == TAIL_BACK)
	{
		[OffensiveFormationData setTailBack:0];
	}
	
	if (locationSelected == LEFT_WIDE_RECEIVER)
	{
		[OffensiveFormationData setLeftWideReceiver:1];
	}
	else if (locationSelected == LEFT_SPLIT_END)
	{
		[OffensiveFormationData setLeftSplitEnd:1];
	}
	else if (locationSelected == LEFT_TIGHT_END)
	{
		[OffensiveFormationData setLeftTightEnd:1];
	}
	else if (locationSelected == RIGHT_TIGHT_END)
	{
		[OffensiveFormationData setRightTightEnd:1];
	}
	else if (locationSelected == RIGHT_SPLIT_END)
	{
		[OffensiveFormationData setRightSplitEnd:1];
	}
	else if (locationSelected == RIGHT_WIDE_RECEIVER)
	{
		[OffensiveFormationData setRightWideReceiver:1];
	}
	else if (locationSelected == QUARTER_BACK)
	{
		[OffensiveFormationData setQuarterBack:1];
	}
	else if (locationSelected == FULL_BACK)
	{
		[OffensiveFormationData setFullBack:1];
	}
	else if (locationSelected == LEFT_HALF_BACK)
	{
		[OffensiveFormationData setLeftHalfBack:1];
	}
	else if (locationSelected == RIGHT_HALF_BACK)
	{
		[OffensiveFormationData setRightHalfBack:1];
	}
	else if (locationSelected == TAIL_BACK)
	{
		[OffensiveFormationData setTailBack:1];
	}
	
	[GameManager setGameState:WAITING_TO_PICK_OFFENSIVE_PLAYER];
	[GameManager setOffensivePositionSelected:NO_POSITION_SELECTED];
	
	[self.superview setNeedsDisplay];
}

- (void)playerTouchesBegan:(int)position
{
}

- (void)playerTouchesMoved:(CGPoint)movePoint :(CGPoint)hitPointTest
{	
}

- (void)playerTouchesEnded:(CGPoint)hitPointTest
{
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

- (BOOL) pointInside:(CGPoint)point withEvent:(UIEvent *)event 
{
	for (int x = 0; x < self.subviews.count; x++)
	{
		UIView *subview = [self.subviews objectAtIndex:x];
		
		// Skip the PopUp subview unless it is visable
		if(subview.tag != 1 || [subview isVisable] == TRUE)
		{
			if (point.x >= subview.frame.origin.x && point.x <= subview.frame.origin.x + [subview frame].size.width)
			{
				if (point.y >= subview.frame.origin.y && point.y <= subview.frame. origin.y + [subview frame].size.height)
				{
					return YES;
				}
			}
		}
	}
	
	return NO;
}

- (void)dealloc
{
    [super dealloc];
}

@end
