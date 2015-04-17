
#import "LocationSelectorView.h"

@implementation LocationSelectorView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
	{
    }
    return self;
}

@synthesize position;

- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
    CGContextSetRGBStrokeColor(context,  0.25, 0.25, 0.25, 0.9);
    CGContextSetRGBFillColor(context, 0.5, 0.5, 0.5, 0.9);
	
	CGContextAddEllipseInRect(context, CGRectMake(10.0, 2.0, 20.0, 20.0));
    
	CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)touchesBegan:(NSSet*) touches withEvent:(UIEvent*)event
{
	int locationnBeingTapped = [(id<LocationTapper>)[self superview] getLocationBeingTapped];
	
	if (locationnBeingTapped == 0)
	{
		[(id<LocationTapper>)[self superview] setLocationBeingTapped:self.position];
	}
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event
{
	int locationnBeingTapped = [(id<LocationTapper>)[self superview] getLocationBeingTapped];
	
	if (locationnBeingTapped == self.position)
	{
		[(id<LocationTapper>)self.superview locationTapped:position];
		
		[(id<LocationTapper>)self.superview setLocationBeingTapped:0];
	}
}

- (void)dealloc
{
    [super dealloc];
}

@end
