
#import "FootballShadowView.h"

@implementation FootballShadowView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [self setContext];
    [self setLength];
    [self setOrigin];
    [self drawShadow];
}

- (void)setContext
{
    context = UIGraphicsGetCurrentContext();
}

- (void)setLength
{
    if (self.bounds.size.width <  self.bounds.size.height)
    {
        length = self.bounds.size.width;
    }
    else
    {
        length = self.bounds.size.height;
    } 
}

- (void)setOrigin
{
    xPos = self.bounds.size.width / 2 - length / 2;
    yPos = self.bounds.size.height / 2 - length / 2;
}

- (void)drawShadow
{
    CGContextSetLineWidth(context, length * 0.05);
    
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.33);
    
    CGContextAddEllipseInRect(context, CGRectMake(xPos + length * 0.15, yPos + length * 0.2, length * 0.5, length * 0.8));
	
    CGContextFillPath(context);
}

- (void)dealloc
{
    [super dealloc];
}

@end
