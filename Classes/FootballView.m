
#import "FootballView.h"

@implementation FootballView

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
    [self drawBody];
    [self drawLaces];
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

- (void)drawBody
{
    CGContextSetLineWidth(context, length * 0.05);
    
	CGContextSetRGBStrokeColor(context, 0.299, 0.137, 0.127, 1.0);
	
    CGContextSetRGBFillColor(context, 0.543, 0.270, 0.074, 1.0);
    
    CGContextAddEllipseInRect(context, CGRectMake(xPos + length * 0.25, yPos + length * 0.1, length * 0.5, length * 0.8));
    
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)drawLaces
{
    CGContextSetLineWidth(context, length * 0.05);
    
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
    
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGContextMoveToPoint(context, xPos + length * 0.5, yPos + length * 0.3);
    CGContextAddLineToPoint(context, xPos + length * 0.5, yPos + length * 0.7);
    
    CGContextMoveToPoint(context, xPos + length * 0.45, yPos + length * 0.3);
    CGContextAddLineToPoint(context, xPos + length * 0.55, yPos + length * 0.3);
    
    CGContextMoveToPoint(context, xPos + length * 0.45, yPos + length * 0.4);
    CGContextAddLineToPoint(context, xPos + length * 0.55, yPos + length * 0.4);
    
    CGContextMoveToPoint(context, xPos + length * 0.45, yPos + length * 0.5);
    CGContextAddLineToPoint(context, xPos + length * 0.55, yPos + length * 0.5);
    
    CGContextMoveToPoint(context, xPos + length * 0.45, yPos + length * 0.6);
    CGContextAddLineToPoint(context, xPos + length * 0.55, yPos + length * 0.6);
    
    CGContextMoveToPoint(context, xPos + length * 0.45, yPos + length * 0.7);
    CGContextAddLineToPoint(context, xPos + length * 0.55, yPos + length * 0.7);
    
    CGContextStrokePath(context);
}

- (void)dealloc
{
    [super dealloc];
}

@end
